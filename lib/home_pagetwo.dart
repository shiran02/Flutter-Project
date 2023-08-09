import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:login/rest_api_service.dart';

class HomePageTwo extends StatefulWidget {
  const HomePageTwo({Key? key}) : super(key: key);

  @override
  State<HomePageTwo> createState() => _HomePageTwoState();
}

class _HomePageTwoState extends State<HomePageTwo> {
  final apiService = RestApiServices();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    apiService.getUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber.shade800,
        title: Text(
          'Home Page',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
                child: FutureBuilder(
              future: apiService.getUsers(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                      itemCount: snapshot.data?.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: (){},
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [BoxShadow(
                                blurRadius: 3,
                                spreadRadius: 3,
                                color: Colors.grey.withOpacity(0.3),
                              )]

                            ),
                            margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                            child: ListTile(
                              title: Text(snapshot.data![index].name ,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),),
                              subtitle: Text(snapshot.data![index].city ,style: TextStyle(fontSize: 18,color: Colors.grey),),
                              leading: ClipOval(
                                child: Image.network(snapshot.data![index].image,fit: BoxFit.cover,width: 60,height: 60,),
                              ),

                              trailing: IconButton(icon: Icon(Icons.favorite), onPressed: () {  },),
                            ),
                          ),
                        );
                      });
                } else {
                  return Container(
                    child: Center(
                      child: Text('Error: ${snapshot.error}'),),

                  );
                }
              },
            )),
          ],
        ),
      ),
    );
  }
}
