import 'package:flutter/material.dart';
import 'package:flutter_provider_ex/change_notifier_listener/app_provider.dart';
import 'package:flutter_provider_ex/change_notifier_listener/success_page.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? searchTerm;
  late final AppProvider appProv;

  @override
  void initState() {
    super.initState();
    appProv = context.read<AppProvider>();
    appProv.addListener(appListener);
  }

  void appListener() {
    if(appProv.state == AppState.success){
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return SuccessPage();
          },
        ),
      );
    } else if(appProv.state == AppState.error){
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text('Something went wrong'),
          );
        },
      );
    }
  }

  void submit() async {
    setState(() {
      autovalidateMode = AutovalidateMode.always;
    });

    final form = formKey.currentState;

    if (form == null || !form.validate()) return;

    form.save();

    context.read<AppProvider>().getResult(searchTerm!);

    // Navigator.push(
    //   context,
    //   MaterialPageRoute(
    //     builder: (context) {
    //       return SuccessPage();
    //     },
    //   ),
    // );
    //
    // showDialog(
    //   context: context,
    //   builder: (context) {
    //     return AlertDialog(
    //       content: Text('Somthing went wrong'),
    //     );
    //   },
    // );
  }

  @override
  void dispose() {
    appProv.removeListener(appListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final appState = context.watch<AppProvider>().state;

    // if(appState == AppState.success){
    //   WidgetsBinding.instance.addPostFrameCallback((_) {
    //     Navigator.push(
    //       context,
    //       MaterialPageRoute(
    //         builder: (context) {
    //           return SuccessPage();
    //         },
    //       ),
    //     );
    //   });
    // } else if(appState == AppState.error){
    //   WidgetsBinding.instance.addPostFrameCallback((_) {
    //     showDialog(
    //       context: context,
    //       builder: (context) {
    //         return AlertDialog(
    //           content: Text('Something went wrong'),
    //         );
    //       },
    //     );
    //   });
    // }

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Form(
              key: formKey,
              autovalidateMode: autovalidateMode,
              child: ListView(
                shrinkWrap: true,
                children: [
                  TextFormField(
                    autofocus: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text('search'),
                      prefixIcon: Icon(Icons.search),
                    ),
                    validator: (String? value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Search term required';
                      }
                      return null;
                    },
                    onSaved: (String? value) {
                      searchTerm = value;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: appState == AppState.loading ? null : submit,
                    child: Text(
                      appState == AppState.loading ? 'Loading...' : 'Get Result',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
