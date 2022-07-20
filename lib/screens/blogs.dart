import 'package:flutter/material.dart';
import 'package:meeraki_store/config/color_scheme.dart';
import 'package:meeraki_store/config/helper.dart';
import 'package:meeraki_store/notifiers/blogs_provider.dart';
import 'package:meeraki_store/screens/blogs_details.dart';
import 'package:provider/provider.dart';

class Blogs extends StatefulWidget {
  const Blogs({Key? key}) : super(key: key);

  @override
  State<Blogs> createState() => _BlogsState();
}

class _BlogsState extends State<Blogs> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Blogs"),
        ),
        body: FutureBuilder(
          future: context.read<BlogsProvider>().fetchBlogs(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator.adaptive(),
              );
            } else {
              var blog = context.read<BlogsProvider>().getAllBlogs();
              return ListView.builder(
                itemCount: blog.data.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                        color: const Color(0xffE1D5F1),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Image.network(Helper.baseUrl2 +
                                  Helper.public +
                                  blog.data[index].banner),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '${blog.data[index].title}',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                    '${blog.data[index].shortDescription}'),
                              ),
                              ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(kPrimaryColor),
                                ),
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => BlogsDetails(
                                            name: blog.data[index].title,
                                            description: blog
                                                .data[index].longDescription,
                                            image: blog.data[index].banner,
                                          )));
                                },
                                child: const Text("View More"),
                              ),
                            ],
                          ),
                        )
                        // ListTile(
                        //   title: Text('${blogNotifierWatch.data[index].title}'),
                        // ),
                        ),
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}
