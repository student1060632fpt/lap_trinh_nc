#include <stdio.h>
#include <string.h>
#include <iostream>

using namespace std;

class SinhVien{
  public:
  //field, property, attribute
  string ten;
  int namSinh;
  string sdt;
  double diemToan;
  double diemLy;
  double diemHoa;
  int* diemTongKet;

  //func, proceduce, operation
  string khoaHoc(){
    if (namSinh == 1999){
      return "khoa k22";
    }
    return "";
  };
  int foo(){
    return *diemTongKet + 5;
  }

  // SinhVien(){
  //   diemTongKet = new int;
  //    *diemTongKet + 5;
  // }
  
  SinhVien() : SinhVien(10){

  }

  ~SinhVien(){
    delete diemTongKet;
  }

  SinhVien(int x){
    diemTongKet = new int;
    *diemTongKet = x;
  }
};//record

int bienToanCuc;
//Class = struct + function

//class vs object

int main()
{
  /* code */
  printf("Hi\n");
  bienToanCuc = 5;

  string tenSV[100];
  int namSinhSV[100];
  string sdtSV[100];
  double diemToan[100];
  double diemHoa[100];
  double diemLy[100];

  SinhVien sv(5);

  sv.ten = "Nguyen van A";
  sv.namSinh = 1999;
  *sv.diemTongKet = 7; 
  printf("ten: %s - %d  - %s\n", sv.ten.c_str(), sv.namSinh, sv.khoaHoc().c_str());

  printf("%d\n", sv.diemTongKet);
  return 0;
}
