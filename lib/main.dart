import 'package:first_flutter_project/Cubits/counter_cubit.dart';
import 'package:first_flutter_project/Cubits/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(BasketballCount());
}

class BasketballCount extends StatelessWidget {
  const BasketballCount({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              "Basketball Point",
              style: TextStyle(color: Colors.white, fontFamily: 'Pacifico'),
            ),
            backgroundColor: const Color.fromARGB(255, 91, 87, 124),
          ),
          body: Column(
            children: [
              IntrinsicHeight(
                child: Row(
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        const Text(
                          "Team A",
                          style: TextStyle(
                              color: Color.fromARGB(255, 91, 87, 124),
                              fontFamily: "Pacifico",
                              fontSize: 35),
                        ),
                        Text(
                          BlocProvider.of<CounterCubit>(context)
                              .teamAPoints
                              .toString(),
                          style: TextStyle(
                              color: Color.fromARGB(255, 91, 87, 124),
                              fontFamily: "Pacifico",
                              fontSize: 90),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context).increament(
                                team: 'A',
                                buttonnumber: 1,
                              );
                            },
                            style: ElevatedButton.styleFrom(
                                minimumSize: const Size(120, 50),
                                backgroundColor:
                                    const Color.fromARGB(255, 91, 87, 124)),
                            child: const Text(
                              "ADD 1 Point",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontFamily: "Pacifico",
                                  fontSize: 22),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context).increament(
                                team: 'A',
                                buttonnumber: 2,
                              );
                            },
                            style: ElevatedButton.styleFrom(
                                minimumSize: const Size(120, 50),
                                backgroundColor:
                                    const Color.fromARGB(255, 91, 87, 124)),
                            child: const Text(
                              "ADD 2 Point",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontFamily: "Pacifico",
                                  fontSize: 22),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context).increament(
                                team: 'A',
                                buttonnumber: 3,
                              );
                            },
                            style: ElevatedButton.styleFrom(
                                minimumSize: const Size(120, 50),
                                backgroundColor:
                                    const Color.fromARGB(255, 91, 87, 124)),
                            child: const Text(
                              "ADD 3 Point",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontFamily: "Pacifico",
                                  fontSize: 22),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const VerticalDivider(
                      color: Color.fromARGB(255, 91, 87, 124),
                      thickness: 2,
                      endIndent: 20,
                      indent: 10,
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        const Text(
                          "Team B",
                          style: TextStyle(
                              color: Color.fromARGB(255, 91, 87, 124),
                              fontFamily: "Pacifico",
                              fontSize: 35),
                        ),
                        Text(
                          BlocProvider.of<CounterCubit>(context)
                              .teamBPoints
                              .toString(),
                          style: TextStyle(
                              color: Color.fromARGB(255, 91, 87, 124),
                              fontFamily: "Pacifico",
                              fontSize: 90),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context).increament(
                                team: 'B',
                                buttonnumber: 1,
                              );
                            },
                            style: ElevatedButton.styleFrom(
                                minimumSize: const Size(120, 50),
                                backgroundColor:
                                    const Color.fromARGB(255, 91, 87, 124)),
                            child: const Text(
                              "ADD 1 Point",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontFamily: "Pacifico",
                                  fontSize: 22),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context).increament(
                                team: 'B',
                                buttonnumber: 2,
                              );
                            },
                            style: ElevatedButton.styleFrom(
                                minimumSize: const Size(120, 50),
                                backgroundColor:
                                    const Color.fromARGB(255, 91, 87, 124)),
                            child: const Text(
                              "ADD 2 Point",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontFamily: "Pacifico",
                                  fontSize: 22),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context).increament(
                                team: 'B',
                                buttonnumber: 3,
                              );
                            },
                            style: ElevatedButton.styleFrom(
                                minimumSize: const Size(120, 50),
                                backgroundColor:
                                    const Color.fromARGB(255, 91, 87, 124)),
                            child: const Text(
                              "ADD 3 Point",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontFamily: "Pacifico",
                                  fontSize: 22),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 70,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(150, 50),
                      backgroundColor: const Color.fromARGB(255, 91, 87, 124)),
                  child: const Text(
                    "Reset",
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontFamily: "Pacifico",
                        fontSize: 24),
                  ),
                ),
              ),
            ],
          ),
        );
      },
      listener: (context, state) {},
    );
  }
}
