import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trinity_wizard_test/bloc/data-bloc/data_bloc.dart';
import 'package:trinity_wizard_test/config/theme.dart';
import 'package:trinity_wizard_test/models/data-model.dart';
import 'package:trinity_wizard_test/screens/screen-two.dart';

class ScreenOnePage extends StatefulWidget {
  
  const ScreenOnePage({super.key});

  @override
  State<ScreenOnePage> createState() => _ScreenOnePageState();
}

class _ScreenOnePageState extends State<ScreenOnePage> {
  @override
  void initState() {
    context.read<DataBloc>().add(GetDataBlocEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          centerTitle: true,
          iconTheme: IconThemeData(
            color: kPrimaryColor,
          ),
          title: Text(
            'Contacts',
            style: blackTextStyle.copyWith(
              fontWeight: bold,
            ),
          ),
          backgroundColor: kBackgroundColor,
          elevation: 0,
          actions: [
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {},
            ),
          ]),
      body: SingleChildScrollView(
        child: BlocBuilder<DataBloc, DataState>(
          builder: (context, state) {
            if (state is DataBlocSuccess) {
              return Column(
                children: [
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemCount: state.dataModel.length,
                    itemBuilder: (context, index) {
                      return cardContact(size, state.dataModel, index );
                    },
                  ),
                ],
              );
            }
            return const SizedBox();
          },
        ),
      ),
    );
  }

  Widget cardContact(Size size, List<ListDataModel> data, int index) {
    return GestureDetector(
      onTap: () {
         Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) =>  ScreenTwoPage(dataModel: data[index],)
          ),
        );
      },
      child: Card(
        shadowColor: kGreyColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(1.0),
          side: BorderSide(color: kGreyColor, width: 1),
        ),
        margin: const EdgeInsets.all(10),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kPrimaryColor,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text('${data[index].firstName!} ${data[index].lastName!}', style: blackTextStyle),
            ],
          ),
        ),
      ),
    );
  }
}
