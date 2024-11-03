import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:intl/intl.dart';

class AddExpense extends StatefulWidget {
  const AddExpense({super.key});

  @override
  State<AddExpense> createState() => _AddExpenseState();
}

class _AddExpenseState extends State<AddExpense> {
  String? selectedItem;
  String? expenseType;
  final TextEditingController _explain = TextEditingController();
  final TextEditingController _amount = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  FocusNode ex = FocusNode();
  FocusNode amnt = FocusNode();
  final List<String> item = [
    "foods",
    "transfer",
    "transportation",
    "education",
    "others",
  ];
  final List<String> expnse = ["Income", "Expanse"];
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    dateController.text = DateFormat("d MMMM yyyy").format(DateTime.now());
    ex.addListener(() {
      setState(() {});
    });
    amnt.addListener(() {
      setState(() {});
    });
  }

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey.shade200,
        ),
        backgroundColor: Colors.grey.shade200,
        body: SafeArea(
          child: Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(24),
                ),
                // color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Add Expenses",
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 30),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 10),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: TextField(
                          textAlignVertical: TextAlignVertical.center,
                          focusNode: amnt,
                          controller: _amount,
                          keyboardType: TextInputType.number,
                          style: GoogleFonts.capriola(
                              color: Colors.black, fontSize: 13),
                          decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              prefixIcon: Icon(
                                Icons.currency_rupee,
                                size: 18,
                                color: Colors.grey,
                              ),
                              labelText: ("Amount"),
                              labelStyle: GoogleFonts.capriola(
                                  color: Colors.grey, fontSize: 13),
                              contentPadding: const EdgeInsets.all(15),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide:
                                      BorderSide(color: Colors.teal, width: 2)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide.none))),
                    ),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: TextField(
                        focusNode: ex,
                        controller: _explain,
                        style: GoogleFonts.capriola(
                            color: Colors.black, fontSize: 13),
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            prefixIcon: Icon(Iconsax.note5,
                                color: Colors.grey, size: 18),
                            filled: true,
                            labelText: ("Note"),
                            labelStyle: GoogleFonts.capriola(
                                color: Colors.grey, fontSize: 13),
                            contentPadding: const EdgeInsets.all(15),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide.none))),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: TextField(
                        readOnly: true,
                        controller: dateController,
                        onTap: () {
                          showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime.now(),
                              lastDate:
                                  DateTime.now().add(Duration(days: 365)));
                        },
                        style: GoogleFonts.capriola(
                            color: Colors.black, fontSize: 13),
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            prefixIcon: Icon(
                              Iconsax.clock5,
                              size: 18,
                              color: Colors.grey,
                            ),
                            labelText: ("Date"),
                            labelStyle: GoogleFonts.capriola(
                                color: Colors.grey, fontSize: 13),
                            contentPadding: const EdgeInsets.all(15),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide.none))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.white),
                      child: DropdownButton<String>(
                          value: selectedItem,
                          // alignment: AlignmentDirectional.center,
                          dropdownColor: Colors.grey.shade100,
                          icon: Icon(Icons.keyboard_arrow_down_rounded),
                          borderRadius: BorderRadius.circular(20),
                          isExpanded: true,
                          elevation: 0,
                          underline: SizedBox.shrink(),
                          hint: Text(
                            "Category",
                            style: GoogleFonts.poppins(
                              color: Colors.grey,
                              fontSize: 13,
                            ),
                          ),
                          items: item.map((String e) {
                            return DropdownMenuItem(
                                value: e,
                                child: Container(
                                  padding: const EdgeInsets.all(12),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 30,
                                        child: Image.asset(
                                            'assets/images/items/${e.toLowerCase()}.png'),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        e.toUpperCase(),
                                        style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600),
                                      )
                                    ],
                                  ),
                                ));
                          }).toList(),
                          selectedItemBuilder: (BuildContext context) => item
                              .map((e) => Row(
                                    children: [
                                      Container(
                                        width: 30,
                                        child: Image.asset(
                                            'assets/images/items/${e.toLowerCase()}.png'),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        e.toUpperCase(),
                                        style: GoogleFonts.capriola(
                                            fontSize: 12,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600),
                                      )
                                    ],
                                  ))
                              .toList(),
                          onChanged: ((value) {
                            setState(() {});
                            selectedItem = value.toString();
                            print(selectedItem);
                          })),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: DropdownButton<String>(
                          value: expenseType,
                          underline: SizedBox.shrink(),
                          dropdownColor: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(16),
                          icon: Icon(Icons.keyboard_arrow_down_rounded),
                          isExpanded: true,
                          elevation: 0,
                          hint: Text(
                            "How",
                            style: GoogleFonts.poppins(
                              color: Colors.grey,
                              fontSize: 13,
                            ),
                          ),
                          items: expnse.map((String e) {
                            return DropdownMenuItem(
                                value: e,
                                child: Container(
                                  padding: const EdgeInsets.all(12),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 30,
                                        child: Image.asset(
                                            'assets/images/items/${e.toLowerCase()}.png'),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        e.toUpperCase(),
                                        style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600),
                                      )
                                    ],
                                  ),
                                ));
                          }).toList(),
                          selectedItemBuilder: (BuildContext context) => expnse
                              .map((e) => Row(
                                    children: [
                                      Container(
                                        width: 42,
                                        child: Image.asset(
                                            'assets/images/items/${e.toLowerCase()}.png'),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        e.toUpperCase(),
                                        style: GoogleFonts.capriola(
                                            fontSize: 12,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600),
                                      )
                                    ],
                                  ))
                              .toList(),
                          onChanged: ((value) {
                            setState(() {});
                            expenseType = value.toString();
                            print(expenseType);
                          })),
                    ),
                  ),
                  Spacer(),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),
                            backgroundColor: const Color(0xff19BC9B)),
                        child: Text(
                          "Save",
                          style: GoogleFonts.geologica(
                              color: Colors.white, fontSize: 16),
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
