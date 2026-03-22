package com.mbridge.msdk.foundation.buffer.sharedperference;

import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.same.directory.e;
import com.mbridge.msdk.foundation.tools.FastKV;
import com.mbridge.msdk.foundation.tools.o0;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class a {
    public static final String b = "a";
    private static a c;

    /* renamed from: a  reason: collision with root package name */
    FastKV f8929a;

    private a() {
    }

    public static synchronized a b() {
        a aVar;
        synchronized (a.class) {
            try {
                if (c == null) {
                    c = new a();
                }
                aVar = c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return aVar;
    }

    public String a(String str) {
        try {
        } catch (Exception e) {
            if (MBridgeConstans.DEBUG) {
                String str2 = b;
                o0.a(str2, "get error: " + e.getMessage());
            }
        }
        if (c.m().d() == null) {
            return null;
        }
        a();
        FastKV fastKV = this.f8929a;
        if (fastKV != null) {
            try {
                return fastKV.getString(str, "");
            } catch (Exception unused) {
                return "";
            }
        }
        return null;
    }

    public void c(String str) {
        if (c.m().d() != null) {
            a();
            FastKV fastKV = this.f8929a;
            if (fastKV != null) {
                try {
                    fastKV.remove(str);
                } catch (Exception unused) {
                }
            }
        }
    }

    public Long b(String str) {
        try {
        } catch (Exception e) {
            if (MBridgeConstans.DEBUG) {
                String str2 = b;
                o0.a(str2, "getLong error: " + e.getMessage());
            }
        }
        if (c.m().d() == null) {
            o0.b(b, "context is null in get");
            return 0L;
        }
        a();
        FastKV fastKV = this.f8929a;
        if (fastKV != null) {
            try {
                return Long.valueOf(fastKV.getLong(str, 0L));
            } catch (Exception unused) {
                return 0L;
            }
        }
        return 0L;
    }

    public int a(String str, int i) {
        try {
            if (c.m().d() != null) {
                a();
                FastKV fastKV = this.f8929a;
                if (fastKV != null) {
                    try {
                        return fastKV.getInt(str, i);
                    } catch (Exception unused) {
                    }
                }
            }
        } catch (Exception e) {
            if (MBridgeConstans.DEBUG) {
                String str2 = b;
                o0.a(str2, "getInt error: " + e.getMessage());
            }
        }
        return i;
    }

    public void a(String str, String str2) {
        try {
            if (c.m().d() == null) {
                return;
            }
            a();
            FastKV fastKV = this.f8929a;
            if (fastKV != null) {
                try {
                    fastKV.putString(str, str2);
                } catch (Exception unused) {
                }
            }
        } catch (Exception e) {
            if (MBridgeConstans.DEBUG) {
                String str3 = b;
                o0.a(str3, "put error: " + e.getMessage());
            }
        }
    }

    public void b(String str, int i) {
        try {
            if (c.m().d() == null) {
                return;
            }
            a();
            FastKV fastKV = this.f8929a;
            if (fastKV != null) {
                try {
                    fastKV.putInt(str, i);
                } catch (Exception unused) {
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void a(String str, long j) {
        try {
            if (c.m().d() == null) {
                o0.b(b, "context is null in put");
                return;
            }
            a();
            FastKV fastKV = this.f8929a;
            if (fastKV != null) {
                try {
                    fastKV.putLong(str, j);
                } catch (Exception unused) {
                }
            }
        } catch (Exception e) {
            if (MBridgeConstans.DEBUG) {
                String str2 = b;
                o0.a(str2, "putLong error: " + e.getMessage());
            }
        }
    }

    private void a() {
        if (this.f8929a == null) {
            try {
                this.f8929a = new FastKV.Builder(e.b(com.mbridge.msdk.foundation.same.directory.c.MBRIDGE_700_CONFIG), "mbridge").build();
            } catch (Exception unused) {
                this.f8929a = null;
            }
        }
    }
}
