import 'package:flutter/material.dart';
import 'package:master_plan/provider/plan_provider.dart';
import '../models/data_layer.dart';

class PlanScreen extends StatefulWidget {
  final Plan plan;

  const PlanScreen({super.key, required this.plan});

  @override
  State<PlanScreen> createState() => _PlanScreenState();
}

class _PlanScreenState extends State<PlanScreen> {
  late ScrollController scrollController;
  late Plan _currentPlan; // plan yang sedang di-edit

  @override
  void initState() {
    super.initState();
    _currentPlan = widget.plan;

    scrollController = ScrollController()
      ..addListener(() {
        FocusScope.of(context).requestFocus(FocusNode());
      });
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ValueNotifier<List<Plan>> plansNotifier = PlanProvider.of(context);

    return Scaffold(
      appBar: AppBar(title: Text(_currentPlan.name)),
      body: ValueListenableBuilder<List<Plan>>(
        valueListenable: plansNotifier,
        builder: (context, plans, child) {
          // Ambil plan sesuai nama
          Plan currentPlan = plans.firstWhere(
            (p) => p.name == _currentPlan.name,
            orElse: () => _currentPlan,
          );

          return Column(
            children: [
              Expanded(child: _buildList(currentPlan)),
              SafeArea(child: Text(currentPlan.completenessMessage)),
            ],
          );
        },
      ),
      floatingActionButton: _buildAddTaskButton(context),
    );
  }

  Widget _buildAddTaskButton(BuildContext context) {
    ValueNotifier<List<Plan>> plansNotifier = PlanProvider.of(context);

    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: () {
        // ambil plan sekarang
        Plan currentPlan = _currentPlan;
        int planIndex =
            plansNotifier.value.indexWhere((p) => p.name == currentPlan.name);

        List<Task> updatedTasks = List<Task>.from(currentPlan.tasks)
          ..add(const Task());

        plansNotifier.value = List<Plan>.from(plansNotifier.value)
          ..[planIndex] = Plan(name: currentPlan.name, tasks: updatedTasks);

        // update variabel lokal
        _currentPlan = Plan(name: currentPlan.name, tasks: updatedTasks);
        setState(() {});
      },
    );
  }

  Widget _buildList(Plan plan) {
    return ListView.builder(
      controller: scrollController,
      itemCount: plan.tasks.length,
      itemBuilder: (context, index) {
        return _buildTaskTile(plan, plan.tasks[index], index);
      },
    );
  }

  Widget _buildTaskTile(Plan plan, Task task, int index) {
    ValueNotifier<List<Plan>> plansNotifier = PlanProvider.of(context);

    return ListTile(
      leading: Checkbox(
        value: task.complete,
        onChanged: (selected) {
          int planIndex = plansNotifier.value.indexWhere(
            (p) => p.name == plan.name,
          );

          List<Task> updatedTasks = List<Task>.from(plan.tasks)
            ..[index] = Task(
              description: task.description,
              complete: selected ?? false,
            );

          plansNotifier.value = List<Plan>.from(plansNotifier.value)
            ..[planIndex] = Plan(name: plan.name, tasks: updatedTasks);

          _currentPlan = Plan(name: plan.name, tasks: updatedTasks);
        },
      ),
      title: TextFormField(
        initialValue: task.description,
        onChanged: (text) {
          int planIndex = plansNotifier.value.indexWhere(
            (p) => p.name == plan.name,
          );

          List<Task> updatedTasks = List<Task>.from(plan.tasks)
            ..[index] = Task(
              description: text,
              complete: task.complete,
            );

          plansNotifier.value = List<Plan>.from(plansNotifier.value)
            ..[planIndex] = Plan(name: plan.name, tasks: updatedTasks);

          _currentPlan = Plan(name: plan.name, tasks: updatedTasks);
        },
      ),
    );
  }
}
