#!/bin/bash
echo "enter name of a state in india"
read state
case $state in
    "andra pradesh")
      echo"language :telugu"
     ;;
    "assam")
     echo "language:assame"
     ;;
     "bihar")
     echo"language :hindi"
     ;;
     "himanchal pradesh")
     echo "language:hindi"
     ;;
     "karnataka")
      echo "language :kannada"
     ;;
     "kerala")
      echo "language:Malayalam"
     ;;
     "lakshe=wadeep")
      echo "language:malayalam"
     ;;
     "tamil nadu")
      echo "language : tamil"
     ;;
     *)
      echo "unknown"
     ;;
    esac
