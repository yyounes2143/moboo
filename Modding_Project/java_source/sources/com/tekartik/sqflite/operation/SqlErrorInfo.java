package com.tekartik.sqflite.operation;

import com.tekartik.sqflite.SqlCommand;
import java.util.HashMap;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class SqlErrorInfo {
    public static Map<String, Object> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Operation operation) {
        SqlCommand Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = operation.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            HashMap hashMap = new HashMap();
            hashMap.put("sql", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            hashMap.put("arguments", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            return hashMap;
        }
        return null;
    }
}
