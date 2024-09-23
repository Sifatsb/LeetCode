int binarySearch(numList, left, right, target){

  if(left > right){
    return -1;
  }

  int mid = (left+right)~/2;

  if(numList[mid] == target){
    return mid;
  }

  if(numList[mid] < target){
    return binarySearch(numList, mid+1, right, target);
  } else{
    return binarySearch(numList, left, mid-1, target);
  }

}

void main() {


  var L=[1,2,5,6,9,10,34,43,46,50,77,81,87,90,95,101,340,430,460,500];
  var left=0;
  var right=L.length-1;
  var x=46;
  var result=binarySearch(L,left,right,x);
  print('${x} found in index of ${result}');
}


