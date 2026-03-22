package com.tekartik.sqflite.operation;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.tekartik.sqflite.SqlCommand;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public abstract class BaseReadOperation implements Operation {
    public final List<Object> Wwwwwwwwwwwwwwwwwwwwwwww() {
        return (List) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("arguments");
    }

    public final String Wwwwwwwwwwwwwwwwwwwwwwwww() {
        return (String) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("sql");
    }

    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        return Boolean.TRUE.equals(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("continueOnError"));
    }

    public final Boolean Wwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 instanceof Boolean) {
            return (Boolean) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        }
        return null;
    }

    @Override // com.tekartik.sqflite.operation.Operation
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return Boolean.TRUE.equals(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("noResult"));
    }

    @Override // com.tekartik.sqflite.operation.Operation
    public SqlCommand Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return new SqlCommand(Wwwwwwwwwwwwwwwwwwwwwwwww(), Wwwwwwwwwwwwwwwwwwwwwwww());
    }

    @Override // com.tekartik.sqflite.operation.Operation
    public Boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwww("inTransaction");
    }

    @Override // com.tekartik.sqflite.operation.Operation
    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("transactionId") && getTransactionId() == null) {
            return true;
        }
        return false;
    }

    @Override // com.tekartik.sqflite.operation.Operation
    @Nullable
    public Integer getTransactionId() {
        return (Integer) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("transactionId");
    }

    @NonNull
    public String toString() {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwww() + " " + Wwwwwwwwwwwwwwwwwwwwwwwww() + " " + Wwwwwwwwwwwwwwwwwwwwwwww();
    }
}
