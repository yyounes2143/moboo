package com.tekartik.sqflite;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import com.mbridge.msdk.MBridgeConstans;
import com.tekartik.sqflite.DatabaseWorkerPool;
import com.tekartik.sqflite.dev.Debug;
import com.tekartik.sqflite.operation.MethodCallOperation;
import com.tencent.vod.flutter.FTXEvent;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.StandardMethodCodec;
import j$.util.Objects;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class SqflitePlugin implements FlutterPlugin, MethodChannel.MethodCallHandler {

    /* renamed from: Wwwwwwwwwwwwww  reason: collision with root package name */
    public static DatabaseWorkerPool f10092Wwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static String f10096Wwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public MethodChannel f10102Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Context f10103Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Map<String, Integer> f10101Wwwwwwwwwwwwwwwwwwwwwww = new HashMap();
    @SuppressLint({"UseSparseArrays"})

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Map<Integer, Database> f10100Wwwwwwwwwwwwwwwwwwwwww = new HashMap();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Object f10099Wwwwwwwwwwwwwwwwwwwww = new Object();

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Object f10098Wwwwwwwwwwwwwwwwwwww = new Object();

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static int f10097Wwwwwwwwwwwwwwwwwww = 0;

    /* renamed from: Wwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static int f10095Wwwwwwwwwwwwwwwww = 0;

    /* renamed from: Wwwwwwwwwwwwwwww  reason: collision with root package name */
    public static int f10094Wwwwwwwwwwwwwwww = 1;

    /* renamed from: Wwwwwwwwwwwwwww  reason: collision with root package name */
    public static int f10093Wwwwwwwwwwwwwww = 0;

    public static Map Wwwwwwwwwwwwwwwwwww(int i, boolean z, boolean z2) {
        HashMap hashMap = new HashMap();
        hashMap.put("id", Integer.valueOf(i));
        if (z) {
            hashMap.put("recovered", Boolean.TRUE);
        }
        if (z2) {
            hashMap.put("recoveredInTransaction", Boolean.TRUE);
        }
        return hashMap;
    }

    public static boolean Wwwwwwwwwwwwwwwwwwww(String str) {
        if (str != null && !str.equals(":memory:")) {
            return false;
        }
        return true;
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(MethodCall methodCall, Database database, MethodChannel.Result result) {
        try {
            database.f10058Wwwwwwwwwwwwwwwwwwwwwwwwww.setLocale(Utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((String) methodCall.argument("locale")));
            result.success(null);
        } catch (Exception e) {
            result.error("sqlite_error", "Error calling setLocale: " + e.getMessage(), null);
        }
    }

    public static /* synthetic */ void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z, String str, MethodChannel.Result result, Boolean bool, Database database, MethodCall methodCall, boolean z2, int i) {
        synchronized (f10098Wwwwwwwwwwwwwwwwwwww) {
            if (!z) {
                File file = new File(new File(str).getParent());
                if (!file.exists() && !file.mkdirs() && !file.exists()) {
                    result.error("sqlite_error", "open_failed " + str, null);
                    return;
                }
            }
            try {
                if (Boolean.TRUE.equals(bool)) {
                    database.Kkkkkkkkkkkkkkkkkkkkkkkkk();
                } else {
                    database.Kkkkkkkkkkkkkkkkkkkkkkkkkk();
                }
                synchronized (f10099Wwwwwwwwwwwwwwwwwwwww) {
                    if (z2) {
                        f10101Wwwwwwwwwwwwwwwwwwwwwww.put(str, Integer.valueOf(i));
                    }
                    f10100Wwwwwwwwwwwwwwwwwwwwww.put(Integer.valueOf(i), database);
                }
                if (LogLevel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(database.f10063Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
                    database.Wwwwwwww();
                }
                result.success(Wwwwwwwwwwwwwwwwwww(i, false, false));
            } catch (Exception e) {
                database.Wwwww(e, new MethodCallOperation(methodCall, result));
            }
        }
    }

    public final void Www(final MethodCall methodCall, final MethodChannel.Result result) {
        final Database Wwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwww(methodCall, result);
        if (Wwwwwwwwwwwwwwwwwwwww2 == null) {
            return;
        }
        f10092Wwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwww2, new Runnable() { // from class: com.tekartik.sqflite.Wwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                Wwwwwwwwwwwwwwwwwwwww2.Kkkkkkkkkkkkkkkkkkkkk(new MethodCallOperation(MethodCall.this, result));
            }
        });
    }

    public final void Wwww(final MethodCall methodCall, final MethodChannel.Result result) {
        final Database Wwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwww(methodCall, result);
        if (Wwwwwwwwwwwwwwwwwwwww2 == null) {
            return;
        }
        f10092Wwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwww2, new Runnable() { // from class: com.tekartik.sqflite.Wwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                SqflitePlugin.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(MethodCall.this, Wwwwwwwwwwwwwwwwwwwww2, result);
            }
        });
    }

    public final void Wwwww(final MethodCall methodCall, final MethodChannel.Result result) {
        final Database Wwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwww(methodCall, result);
        if (Wwwwwwwwwwwwwwwwwwwww2 == null) {
            return;
        }
        f10092Wwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwww2, new Runnable() { // from class: com.tekartik.sqflite.Wwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                Wwwwwwwwwwwwwwwwwwwww2.Kkkkkkkkkkkkkkkkkkkkkkk(new MethodCallOperation(MethodCall.this, result));
            }
        });
    }

    public final void Wwwwww(final MethodCall methodCall, final MethodChannel.Result result) {
        final Database Wwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwww(methodCall, result);
        if (Wwwwwwwwwwwwwwwwwwwww2 == null) {
            return;
        }
        f10092Wwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwww2, new Runnable() { // from class: com.tekartik.sqflite.Wwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                Wwwwwwwwwwwwwwwwwwwww2.Kkkkkkkkkkkkkkkkkkkkkkkk(new MethodCallOperation(MethodCall.this, result));
            }
        });
    }

    public void Wwwwwww(MethodCall methodCall, MethodChannel.Result result) {
        Object argument = methodCall.argument("androidThreadPriority");
        if (argument != null) {
            f10095Wwwwwwwwwwwwwwwww = ((Integer) argument).intValue();
        }
        Object argument2 = methodCall.argument("androidThreadCount");
        if (argument2 != null && !argument2.equals(Integer.valueOf(f10094Wwwwwwwwwwwwwwww))) {
            f10094Wwwwwwwwwwwwwwww = ((Integer) argument2).intValue();
            DatabaseWorkerPool databaseWorkerPool = f10092Wwwwwwwwwwwwww;
            if (databaseWorkerPool != null) {
                databaseWorkerPool.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                f10092Wwwwwwwwwwwwww = null;
            }
        }
        Integer Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = LogLevel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(methodCall);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            f10097Wwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.intValue();
        }
        result.success(null);
    }

    public final void Wwwwwwww(final MethodCall methodCall, final MethodChannel.Result result) {
        boolean z;
        final int i;
        Database database;
        final String str = (String) methodCall.argument(MBridgeConstans.DYNAMIC_VIEW_WX_PATH);
        final Boolean bool = (Boolean) methodCall.argument("readOnly");
        final boolean Wwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwww(str);
        if (!Boolean.FALSE.equals(methodCall.argument("singleInstance")) && !Wwwwwwwwwwwwwwwwwwww2) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            synchronized (f10099Wwwwwwwwwwwwwwwwwwwww) {
                try {
                    if (LogLevel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(f10097Wwwwwwwwwwwwwwwwwww)) {
                        Objects.toString(f10101Wwwwwwwwwwwwwwwwwwwwwww.keySet());
                    }
                    Integer num = f10101Wwwwwwwwwwwwwwwwwwwwwww.get(str);
                    if (num != null && (database = f10100Wwwwwwwwwwwwwwwwwwwwww.get(num)) != null) {
                        if (!database.f10058Wwwwwwwwwwwwwwwwwwwwwwwwww.isOpen()) {
                            if (LogLevel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(f10097Wwwwwwwwwwwwwwwwwww)) {
                                database.Wwwwwwww();
                            }
                        } else {
                            if (LogLevel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(f10097Wwwwwwwwwwwwwwwwwww)) {
                                database.Wwwwwwww();
                                database.Www();
                            }
                            result.success(Wwwwwwwwwwwwwwwwwww(num.intValue(), true, database.Www()));
                            return;
                        }
                    }
                } finally {
                }
            }
        }
        Object obj = f10099Wwwwwwwwwwwwwwwwwwwww;
        synchronized (obj) {
            i = f10093Wwwwwwwwwwwwwww + 1;
            f10093Wwwwwwwwwwwwwww = i;
        }
        final Database database2 = new Database(this.f10103Wwwwwwwwwwwwwwwwwwwwwwwww, str, i, z, f10097Wwwwwwwwwwwwwwwwwww);
        synchronized (obj) {
            try {
                if (f10092Wwwwwwwwwwwwww == null) {
                    DatabaseWorkerPool Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = DatabaseWorkerPool.CC.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("Sqflite", f10094Wwwwwwwwwwwwwwww, f10095Wwwwwwwwwwwwwwwww);
                    f10092Wwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.start();
                    if (LogLevel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(database2.f10063Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
                        database2.Wwwwwwww();
                    }
                }
                database2.f10059Wwwwwwwwwwwwwwwwwwwwwwwwwww = f10092Wwwwwwwwwwwwww;
                if (LogLevel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(database2.f10063Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
                    database2.Wwwwwwww();
                }
                final boolean z2 = z;
                f10092Wwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(database2, new Runnable() { // from class: com.tekartik.sqflite.Wwwwwwwwwwwwwwwwwww
                    @Override // java.lang.Runnable
                    public final void run() {
                        SqflitePlugin.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwww2, str, result, bool, database2, methodCall, z2, i);
                    }
                });
            } finally {
            }
        }
    }

    public final void Wwwwwwwww(final MethodCall methodCall, final MethodChannel.Result result) {
        final Database Wwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwww(methodCall, result);
        if (Wwwwwwwwwwwwwwwwwwwww2 == null) {
            return;
        }
        f10092Wwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwww2, new Runnable() { // from class: com.tekartik.sqflite.Wwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                Wwwwwwwwwwwwwwwwwwwww2.Wwww(new MethodCallOperation(MethodCall.this, result));
            }
        });
    }

    public void Wwwwwwwwww(MethodCall methodCall, MethodChannel.Result result) {
        if (f10096Wwwwwwwwwwwwwwwwww == null) {
            f10096Wwwwwwwwwwwwwwwwww = this.f10103Wwwwwwwwwwwwwwwwwwwwwwwww.getDatabasePath("tekartik_sqflite.db").getParent();
        }
        result.success(f10096Wwwwwwwwwwwwwwwwww);
    }

    public final void Wwwwwwwwwww(final MethodCall methodCall, final MethodChannel.Result result) {
        final Database Wwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwww(methodCall, result);
        if (Wwwwwwwwwwwwwwwwwwwww2 == null) {
            return;
        }
        f10092Wwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwww2, new Runnable() { // from class: com.tekartik.sqflite.Wwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                Wwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwww(new MethodCallOperation(MethodCall.this, result));
            }
        });
    }

    public final void Wwwwwwwwwwww(MethodCall methodCall, final MethodChannel.Result result) {
        final Database database;
        Map<Integer, Database> map;
        final String str = (String) methodCall.argument(MBridgeConstans.DYNAMIC_VIEW_WX_PATH);
        synchronized (f10099Wwwwwwwwwwwwwwwwwwwww) {
            try {
                if (LogLevel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(f10097Wwwwwwwwwwwwwwwwwww)) {
                    Objects.toString(f10101Wwwwwwwwwwwwwwwwwwwwwww.keySet());
                }
                Map<String, Integer> map2 = f10101Wwwwwwwwwwwwwwwwwwwwwww;
                Integer num = map2.get(str);
                if (num != null && (database = (map = f10100Wwwwwwwwwwwwwwwwwwwwww).get(num)) != null && database.f10058Wwwwwwwwwwwwwwwwwwwwwwwwww.isOpen()) {
                    if (LogLevel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(f10097Wwwwwwwwwwwwwwwwwww)) {
                        database.Wwwwwwww();
                        database.Www();
                    }
                    map.remove(num);
                    map2.remove(str);
                } else {
                    database = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        Runnable runnable = new Runnable() { // from class: com.tekartik.sqflite.SqflitePlugin.2
            @Override // java.lang.Runnable
            public void run() {
                synchronized (SqflitePlugin.f10098Wwwwwwwwwwwwwwwwwwww) {
                    Database database2 = database;
                    if (database2 != null) {
                        SqflitePlugin.this.Wwwwwwwwwwwwwwwwwwwwwww(database2);
                    }
                    try {
                        LogLevel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(SqflitePlugin.f10097Wwwwwwwwwwwwwwwwwww);
                        Database.Wwwwwwwwwwwwwwwwwwww(str);
                    } catch (Exception e) {
                        e.toString();
                        int unused = SqflitePlugin.f10093Wwwwwwwwwwwwwww;
                    }
                }
                result.success(null);
            }
        };
        DatabaseWorkerPool databaseWorkerPool = f10092Wwwwwwwwwwwwww;
        if (databaseWorkerPool != null) {
            databaseWorkerPool.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(database, runnable);
        } else {
            runnable.run();
        }
    }

    public final void Wwwwwwwwwwwww(MethodCall methodCall, MethodChannel.Result result) {
        boolean z;
        Debug.f10160Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Boolean.TRUE.equals(methodCall.arguments());
        if (Debug.f10159Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && Debug.f10160Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            z = true;
        } else {
            z = false;
        }
        Debug.f10158Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
        if (Debug.f10160Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            if (Debug.f10158Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                f10097Wwwwwwwwwwwwwwwwwww = 2;
            } else if (Debug.f10160Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                f10097Wwwwwwwwwwwwwwwwwww = 1;
            }
        } else {
            f10097Wwwwwwwwwwwwwwwwwww = 0;
        }
        result.success(null);
    }

    public final void Wwwwwwwwwwwwww(MethodCall methodCall, MethodChannel.Result result) {
        HashMap hashMap = new HashMap();
        if ("get".equals((String) methodCall.argument("cmd"))) {
            int i = f10097Wwwwwwwwwwwwwwwwwww;
            if (i > 0) {
                hashMap.put(FTXEvent.EVENT_LOG_LEVEL, Integer.valueOf(i));
            }
            Map<Integer, Database> map = f10100Wwwwwwwwwwwwwwwwwwwwww;
            if (!map.isEmpty()) {
                HashMap hashMap2 = new HashMap();
                for (Map.Entry<Integer, Database> entry : map.entrySet()) {
                    Database value = entry.getValue();
                    HashMap hashMap3 = new HashMap();
                    hashMap3.put(MBridgeConstans.DYNAMIC_VIEW_WX_PATH, value.f10065Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                    hashMap3.put("singleInstance", Boolean.valueOf(value.f10066Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww));
                    int i2 = value.f10063Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    if (i2 > 0) {
                        hashMap3.put(FTXEvent.EVENT_LOG_LEVEL, Integer.valueOf(i2));
                    }
                    hashMap2.put(entry.getKey().toString(), hashMap3);
                }
                hashMap.put("databases", hashMap2);
            }
        }
        result.success(hashMap);
    }

    public final void Wwwwwwwwwwwwwww(MethodCall methodCall, MethodChannel.Result result) {
        result.success(Boolean.valueOf(Database.Wwwwwwwwwww((String) methodCall.argument(MBridgeConstans.DYNAMIC_VIEW_WX_PATH))));
    }

    public final void Wwwwwwwwwwwwwwww(MethodCall methodCall, final MethodChannel.Result result) {
        Integer num = (Integer) methodCall.argument("id");
        num.intValue();
        final Database Wwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwww(methodCall, result);
        if (Wwwwwwwwwwwwwwwwwwwww2 == null) {
            return;
        }
        if (LogLevel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwww2.f10063Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
            Wwwwwwwwwwwwwwwwwwwww2.Wwwwwwww();
        }
        String str = Wwwwwwwwwwwwwwwwwwwww2.f10065Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        synchronized (f10099Wwwwwwwwwwwwwwwwwwwww) {
            try {
                f10100Wwwwwwwwwwwwwwwwwwwwww.remove(num);
                if (Wwwwwwwwwwwwwwwwwwwww2.f10066Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                    f10101Wwwwwwwwwwwwwwwwwwwwwww.remove(str);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        f10092Wwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwww2, new Runnable() { // from class: com.tekartik.sqflite.SqflitePlugin.1
            @Override // java.lang.Runnable
            public void run() {
                synchronized (SqflitePlugin.f10098Wwwwwwwwwwwwwwwwwwww) {
                    SqflitePlugin.this.Wwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwww2);
                }
                result.success(null);
            }
        });
    }

    public final void Wwwwwwwwwwwwwwwww(final MethodCall methodCall, final MethodChannel.Result result) {
        final Database Wwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwww(methodCall, result);
        if (Wwwwwwwwwwwwwwwwwwwww2 == null) {
            return;
        }
        f10092Wwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwww2, new Runnable() { // from class: com.tekartik.sqflite.Wwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                Database.this.Wwwwwwwwwwwwwwwwwwwwwwwwwww(methodCall, result);
            }
        });
    }

    public final void Wwwwwwwwwwwwwwwwww(Context context, BinaryMessenger binaryMessenger) {
        this.f10103Wwwwwwwwwwwwwwwwwwwwwwwww = context;
        MethodChannel methodChannel = new MethodChannel(binaryMessenger, "com.tekartik.sqflite", StandardMethodCodec.INSTANCE, binaryMessenger.makeBackgroundTaskQueue());
        this.f10102Wwwwwwwwwwwwwwwwwwwwwwww = methodChannel;
        methodChannel.setMethodCallHandler(this);
    }

    public final Database Wwwwwwwwwwwwwwwwwwwww(MethodCall methodCall, MethodChannel.Result result) {
        int intValue = ((Integer) methodCall.argument("id")).intValue();
        Database Wwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwww(intValue);
        if (Wwwwwwwwwwwwwwwwwwwwww2 != null) {
            return Wwwwwwwwwwwwwwwwwwwwww2;
        }
        result.error("sqlite_error", "database_closed " + intValue, null);
        return null;
    }

    public final Database Wwwwwwwwwwwwwwwwwwwwww(int i) {
        return f10100Wwwwwwwwwwwwwwwwwwwwww.get(Integer.valueOf(i));
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwww(Database database) {
        try {
            if (LogLevel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(database.f10063Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
                database.Wwwwwwww();
            }
            database.Wwwwwwwwwwwwwwwwwwwwwwww();
        } catch (Exception e) {
            e.toString();
        }
        synchronized (f10099Wwwwwwwwwwwwwwwwwwwww) {
            try {
                if (f10100Wwwwwwwwwwwwwwwwwwwwww.isEmpty() && f10092Wwwwwwwwwwwwww != null) {
                    if (LogLevel.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(database.f10063Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
                        database.Wwwwwwww();
                    }
                    f10092Wwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                    f10092Wwwwwwwwwwwwww = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        Wwwwwwwwwwwwwwwwww(flutterPluginBinding.getApplicationContext(), flutterPluginBinding.getBinaryMessenger());
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        this.f10103Wwwwwwwwwwwwwwwwwwwwwwwww = null;
        this.f10102Wwwwwwwwwwwwwwwwwwwwwwww.setMethodCallHandler(null);
        this.f10102Wwwwwwwwwwwwwwwwwwwwwwww = null;
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall methodCall, MethodChannel.Result result) {
        String str = methodCall.method;
        str.getClass();
        char c = 65535;
        switch (str.hashCode()) {
            case -1319569547:
                if (str.equals("execute")) {
                    c = 0;
                    break;
                }
                break;
            case -1253581933:
                if (str.equals("closeDatabase")) {
                    c = 1;
                    break;
                }
                break;
            case -1249474914:
                if (str.equals("options")) {
                    c = 2;
                    break;
                }
                break;
            case -1183792455:
                if (str.equals("insert")) {
                    c = 3;
                    break;
                }
                break;
            case -838846263:
                if (str.equals("update")) {
                    c = 4;
                    break;
                }
                break;
            case -396289107:
                if (str.equals("androidSetLocale")) {
                    c = 5;
                    break;
                }
                break;
            case -263511994:
                if (str.equals("deleteDatabase")) {
                    c = 6;
                    break;
                }
                break;
            case -198450538:
                if (str.equals("debugMode")) {
                    c = 7;
                    break;
                }
                break;
            case -17190427:
                if (str.equals("openDatabase")) {
                    c = '\b';
                    break;
                }
                break;
            case 93509434:
                if (str.equals("batch")) {
                    c = '\t';
                    break;
                }
                break;
            case 95458899:
                if (str.equals("debug")) {
                    c = '\n';
                    break;
                }
                break;
            case 107944136:
                if (str.equals("query")) {
                    c = 11;
                    break;
                }
                break;
            case 956410295:
                if (str.equals("databaseExists")) {
                    c = '\f';
                    break;
                }
                break;
            case 1193546321:
                if (str.equals("queryCursorNext")) {
                    c = '\r';
                    break;
                }
                break;
            case 1385449135:
                if (str.equals("getPlatformVersion")) {
                    c = 14;
                    break;
                }
                break;
            case 1863829223:
                if (str.equals("getDatabasesPath")) {
                    c = 15;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                Wwwwwwwwwww(methodCall, result);
                return;
            case 1:
                Wwwwwwwwwwwwwwww(methodCall, result);
                return;
            case 2:
                Wwwwwww(methodCall, result);
                return;
            case 3:
                Wwwwwwwww(methodCall, result);
                return;
            case 4:
                Www(methodCall, result);
                return;
            case 5:
                Wwww(methodCall, result);
                return;
            case 6:
                Wwwwwwwwwwww(methodCall, result);
                return;
            case 7:
                Wwwwwwwwwwwww(methodCall, result);
                return;
            case '\b':
                Wwwwwwww(methodCall, result);
                return;
            case '\t':
                Wwwwwwwwwwwwwwwww(methodCall, result);
                return;
            case '\n':
                Wwwwwwwwwwwwww(methodCall, result);
                return;
            case 11:
                Wwwwww(methodCall, result);
                return;
            case '\f':
                Wwwwwwwwwwwwwww(methodCall, result);
                return;
            case '\r':
                Wwwww(methodCall, result);
                return;
            case 14:
                result.success("Android " + Build.VERSION.RELEASE);
                return;
            case 15:
                Wwwwwwwwww(methodCall, result);
                return;
            default:
                result.notImplemented();
                return;
        }
    }
}
