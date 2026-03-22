package com.tencent.liteav.videobase.utils;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import com.tencent.liteav.base.ContextUtils;
import com.tencent.liteav.base.util.LiteavLog;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final class c {
    private static final Object f = new Object();
    private static c g;

    /* renamed from: a  reason: collision with root package name */
    final Context f10398a;
    private final Handler e;
    final HashMap<BroadcastReceiver, ArrayList<b>> b = new HashMap<>();
    private final HashMap<String, ArrayList<b>> d = new HashMap<>();
    final ArrayList<a> c = new ArrayList<>();

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final Intent f10400a;
        final ArrayList<b> b;

        public a(Intent intent, ArrayList<b> arrayList) {
            this.f10400a = intent;
            this.b = arrayList;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        final IntentFilter f10401a;
        final BroadcastReceiver b;
        boolean c;
        boolean d;

        public final String toString() {
            StringBuilder sb = new StringBuilder(128);
            sb.append("Receiver{");
            sb.append(this.b);
            sb.append(" filter=");
            sb.append(this.f10401a);
            if (this.d) {
                sb.append(" DEAD");
            }
            sb.append("}");
            return sb.toString();
        }
    }

    private c(Context context) {
        this.f10398a = context;
        this.e = new Handler(context.getMainLooper()) { // from class: com.tencent.liteav.videobase.utils.c.1
            @Override // android.os.Handler
            public final void handleMessage(Message message) {
                int size;
                a[] aVarArr;
                if (message.what == 1) {
                    c cVar = c.this;
                    while (true) {
                        synchronized (cVar.b) {
                            try {
                                size = cVar.c.size();
                                if (size <= 0) {
                                    return;
                                }
                                aVarArr = new a[size];
                                cVar.c.toArray(aVarArr);
                                cVar.c.clear();
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        for (int i = 0; i < size; i++) {
                            a aVar = aVarArr[i];
                            int size2 = aVar.b.size();
                            for (int i2 = 0; i2 < size2; i2++) {
                                b bVar = aVar.b.get(i2);
                                if (!bVar.d) {
                                    bVar.b.onReceive(cVar.f10398a, aVar.f10400a);
                                }
                            }
                        }
                    }
                } else {
                    super.handleMessage(message);
                }
            }
        };
    }

    public static c a() {
        c cVar;
        synchronized (f) {
            try {
                if (g == null) {
                    g = new c(ContextUtils.getApplicationContext());
                }
                cVar = g;
            } catch (Throwable th) {
                throw th;
            }
        }
        return cVar;
    }

    public final boolean a(Intent intent) {
        String str;
        String str2;
        synchronized (this.b) {
            try {
                String action = intent.getAction();
                String resolveTypeIfNeeded = intent.resolveTypeIfNeeded(this.f10398a.getContentResolver());
                Uri data = intent.getData();
                String scheme = intent.getScheme();
                Set<String> categories = intent.getCategories();
                boolean z = (intent.getFlags() & 8) != 0;
                if (z) {
                    LiteavLog.v("LocalBroadcastManager", "Resolving type " + resolveTypeIfNeeded + " scheme " + scheme + " of intent " + intent);
                }
                ArrayList<b> arrayList = this.d.get(intent.getAction());
                if (arrayList != null) {
                    if (z) {
                        LiteavLog.v("LocalBroadcastManager", "Action list: ".concat(String.valueOf(arrayList)));
                    }
                    ArrayList arrayList2 = null;
                    int i = 0;
                    while (i < arrayList.size()) {
                        b bVar = arrayList.get(i);
                        if (z) {
                            LiteavLog.v("LocalBroadcastManager", "Matching against filter " + bVar.f10401a);
                        }
                        if (bVar.c) {
                            if (z) {
                                LiteavLog.v("LocalBroadcastManager", "  Filter's target already added");
                            }
                            str = action;
                        } else {
                            int match = bVar.f10401a.match(action, resolveTypeIfNeeded, scheme, data, categories, "LocalBroadcastManager");
                            if (match >= 0) {
                                if (z) {
                                    str = action;
                                    LiteavLog.v("LocalBroadcastManager", "  Filter matched!  match=0x" + Integer.toHexString(match));
                                } else {
                                    str = action;
                                }
                                if (arrayList2 == null) {
                                    arrayList2 = new ArrayList();
                                }
                                arrayList2.add(bVar);
                                bVar.c = true;
                            } else {
                                str = action;
                                if (z) {
                                    if (match == -4) {
                                        str2 = "category";
                                    } else if (match == -3) {
                                        str2 = "action";
                                    } else if (match == -2) {
                                        str2 = "data";
                                    } else if (match != -1) {
                                        str2 = "unknown reason";
                                    } else {
                                        str2 = "type";
                                    }
                                    LiteavLog.v("LocalBroadcastManager", "  Filter did not match: ".concat(str2));
                                }
                            }
                        }
                        i++;
                        action = str;
                    }
                    if (arrayList2 != null) {
                        for (int i2 = 0; i2 < arrayList2.size(); i2++) {
                            ((b) arrayList2.get(i2)).c = false;
                        }
                        this.c.add(new a(intent, arrayList2));
                        if (!this.e.hasMessages(1)) {
                            this.e.sendEmptyMessage(1);
                        }
                        return true;
                    }
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
