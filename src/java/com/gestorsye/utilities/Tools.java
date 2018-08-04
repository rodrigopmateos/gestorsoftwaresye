package com.gestorsye.utilities;

public class Tools {

    public static String getSatus(int num) {
        String status = "";

        switch (num) {
            case 1:
                status="Abierta";
                break;
            case 2:
                status="En progreso";
                break;
            case 3:
                status="Suspendida";
                break;
            case 4:
                status="Reabierta";
                break;
            case 5:
                status="Cerrada";
                break;
        }
        return status;
    }

}
