import 'package:advicer/application/pages/advice/widgets/advice_field.dart';
import 'package:advicer/application/pages/advice/widgets/error_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/advicer_cubit.dart';

class AdvicerPageWrapperProvider extends StatelessWidget {
  const AdvicerPageWrapperProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AdvicerCubit(),
      child: const AdvicePage(),
    );
  }
}

class AdvicePage extends StatelessWidget {
  const AdvicePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.primaryColor,
        title: Text(
          'Advice',
          style: theme.textTheme.headlineMedium,
        ),
        centerTitle: true,
      ),
      body: BlocConsumer<AdvicerCubit, AdvicerState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (state is AdvicerInitial)
                  const Expanded(
                    child:
                        AdviceField(advice: 'Your advice is waiting for you.'),
                    // child: ErrorMessage(message: 'Something went wrong'),
                    // child: Center(
                    //     child: AdviceField(advice: 'This is an example advice bro')),
                  )
                else if (state is AdviceStateLoading)
                  const Expanded(
                    child: Center(
                      child: SizedBox(
                        height: 40,
                        width: 40,
                        child: CircularProgressIndicator(),
                      ),
                    ),
                  )
                else if (state is AdviceStateLoaded)
                  Expanded(child: AdviceField(advice: state.advice))
                else if (state is AdviceStateError)
                  Expanded(child: ErrorMessage(message: state.message)),
                Center(
                  child: TextButton(
                    onPressed: () {
                      BlocProvider.of<AdvicerCubit>(context).requestAdvice();
                    },
                    child: const Text('Get Advice'),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
