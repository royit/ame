import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map infos = {
      "name": "Roy",
      "group": "sharon-backend",
      "phone": "10086",
      "mailbox": "royren@xiaoman.cn",
      "remarks": "What",
    };

    List<DetailItemModel> items = [
      DetailItemModel("Name", infos["name"]),
      DetailItemModel("Group", infos["group"]),
      DetailItemModel("Phone", infos["phone"]),
      DetailItemModel("MailBox", infos["mailbox"]),
      DetailItemModel("Remarks", infos["remarks"]),
    ];

    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: const Text('联系人详情'),
        ),
        // backgroundColor: Colors.yellow,
        child: ListView.builder(
          itemBuilder: (context, index) {
            if (index < items.length) {
              return ContactDetailItem(
                title: items[index].title,
                detail: items[index].detail,
                detailColor: Colors.black,
              );
            }
            return ActionButtons();
          },
          itemCount: items.length + 1,
        ));
  }
}

class DetailItemModel {
  final String title;
  final String detail;

  DetailItemModel(this.title, this.detail);
}

class ContactDetailItem extends StatelessWidget {
  final String title;
  final String detail;
  final Color detailColor;

  const ContactDetailItem({Key key, this.title, this.detail, this.detailColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: EdgeInsets.only(left: 16),
      child: Column(
        children: [
          Container(
            height: 49,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title),
                Container(
                  padding: EdgeInsets.only(right: 16),
                  child: Text(
                    detail,
                    style: TextStyle(fontSize: 17, color: detailColor),
                  ),
                )
              ],
            ),
          ),
          const Divider(
            color: Colors.grey,
            height: 1,
            thickness: 0.5,
            indent: 0,
            endIndent: 0,
          ),
        ],
      ),
    );
  }
}

class ActionButtons extends StatelessWidget {
  void _call() {
    // call
  }

  void _sendMail() {}

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16, right: 16),
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              child: CupertinoButton(
                  color: Colors.blue,
                  child: Row(
                    children: [
                      // Image(image: Image.asset("call")),
                      Text("Call")
                    ],
                  ),
                  onPressed: () => _call)),
          Container(
            width: 20,
            child: Spacer(),
          ),
          Expanded(
              child: CupertinoButton(
                  color: Colors.blue,
                  child: Row(
                    children: [
                      // Image(image: Image.asset("call")),
                      Text("Send Mail")
                    ],
                  ),
                  onPressed: () => _sendMail))
        ],
      ),
    );
  }
}
