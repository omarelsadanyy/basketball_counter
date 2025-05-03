import 'package:basketball_counter/cubit/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
   HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {
       
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title: const Text("Points Counter"),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        "Team A",
                        style: TextStyle(fontSize: 32),
                      ),
                      Text(
                        "${BlocProvider.of<CounterCubit>(context).teamAPoints}",
                        style: TextStyle(fontSize: 150),
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: Size(160, 50)),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context).incrementTeamA(teamName: 'A', buttonNumber: 1);
                          },
                          child: Text(
                            "Add 1 Point",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          )),
                      const SizedBox(height: 26),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: Size(160, 50)),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context).incrementTeamA(teamName: 'A', buttonNumber: 2);
                          },
                          child: Text(
                            "Add 2 Point",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          )),
                      const SizedBox(height: 26),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: Size(160, 50)),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context).incrementTeamA(teamName: 'A', buttonNumber: 3);
                          },
                          child: Text(
                            "Add 3 Point",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          )),
                      const SizedBox(height: 26)
                    ],
                  ),
                  SizedBox(
                    height: 400,
                    child: VerticalDivider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        "Team B",
                        style: TextStyle(fontSize: 32),
                      ),
                      Text(
                        "${BlocProvider.of<CounterCubit>(context).teamBPoints}",
                        style: TextStyle(fontSize: 150),
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: Size(160, 50)),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context).incrementTeamA(teamName: 'B', buttonNumber: 1);
                          },
                          child: Text(
                            "Add 1 Point",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          )),
                      const SizedBox(height: 26),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: Size(160, 50)),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context).incrementTeamA(teamName: 'B', buttonNumber: 2);
                          },
                          child: Text(
                            "Add 2 Point",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          )),
                      const SizedBox(height: 26),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: Size(160, 50)),
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context).incrementTeamA(teamName: 'B', buttonNumber: 3);
                          },
                          child: Text(
                            "Add 3 Point",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          )),
                      const SizedBox(height: 26)
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      minimumSize: Size(160, 50)),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text("Reset"),
                            content: Text("Are you sure you want to reset?"),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text("No")),
                              TextButton(
                                  onPressed: () {
                                    BlocProvider.of<CounterCubit>(context).teamAPoints=0;
                                    BlocProvider.of<CounterCubit>(context).teamBPoints=0;
                                    setState(() {
                                      
                                    });
                                    Navigator.pop(context);
                                  },
                                  child: Text("Yes"))
                            ],
                          );
                        });
                  },
                  child: Text(
                    "Reset",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  )),
              SizedBox(
                height: 20,
              )
            ],
          ),
        );
      },
    );
  }
}
