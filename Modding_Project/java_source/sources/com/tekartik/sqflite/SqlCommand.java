package com.tekartik.sqflite;

import android.database.sqlite.SQLiteProgram;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class SqlCommand {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<Object> f10111Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f10112Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public SqlCommand(String str, List<Object> list) {
        this.f10112Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        this.f10111Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = list == null ? new ArrayList<>() : list;
    }

    public static Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof List) {
            List list = (List) obj;
            byte[] bArr = new byte[list.size()];
            for (int i = 0; i < list.size(); i++) {
                bArr[i] = (byte) ((Integer) list.get(i)).intValue();
            }
            return bArr;
        }
        return obj;
    }

    public final Object[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(List<Object> list) {
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            for (Object obj : list) {
                arrayList.add(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(obj));
            }
        }
        return arrayList.toArray(new Object[0]);
    }

    public Object[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f10111Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f10112Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public List<Object> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f10111Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(SQLiteProgram sQLiteProgram) {
        long j;
        List<Object> list = this.f10111Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (list != null) {
            int size = list.size();
            int i = 0;
            while (i < size) {
                Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f10111Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(i));
                int i2 = i + 1;
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                    sQLiteProgram.bindNull(i2);
                } else if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 instanceof byte[]) {
                    sQLiteProgram.bindBlob(i2, (byte[]) Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                } else if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 instanceof Double) {
                    sQLiteProgram.bindDouble(i2, ((Double) Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2).doubleValue());
                } else if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 instanceof Integer) {
                    sQLiteProgram.bindLong(i2, ((Integer) Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2).intValue());
                } else if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 instanceof Long) {
                    sQLiteProgram.bindLong(i2, ((Long) Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2).longValue());
                } else if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 instanceof String) {
                    sQLiteProgram.bindString(i2, (String) Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                } else if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 instanceof Boolean) {
                    if (((Boolean) Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2).booleanValue()) {
                        j = 1;
                    } else {
                        j = 0;
                    }
                    sQLiteProgram.bindLong(i2, j);
                } else {
                    throw new IllegalArgumentException("Could not bind " + Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 + " from index " + i + ": Supported types are null, byte[], double, long, boolean and String");
                }
                i = i2;
            }
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof SqlCommand)) {
            return false;
        }
        SqlCommand sqlCommand = (SqlCommand) obj;
        String str = this.f10112Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (str != null) {
            if (!str.equals(sqlCommand.f10112Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
                return false;
            }
        } else if (sqlCommand.f10112Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != null) {
            return false;
        }
        if (this.f10111Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.size() != sqlCommand.f10111Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.size()) {
            return false;
        }
        for (int i = 0; i < this.f10111Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.size(); i++) {
            if ((this.f10111Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(i) instanceof byte[]) && (sqlCommand.f10111Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(i) instanceof byte[])) {
                if (!Arrays.equals((byte[]) this.f10111Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(i), (byte[]) sqlCommand.f10111Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(i))) {
                    return false;
                }
            } else if (!this.f10111Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(i).equals(sqlCommand.f10111Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(i))) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        String str = this.f10112Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(this.f10112Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        List<Object> list = this.f10111Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (list != null && !list.isEmpty()) {
            str = " " + this.f10111Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        } else {
            str = "";
        }
        sb.append(str);
        return sb.toString();
    }
}
