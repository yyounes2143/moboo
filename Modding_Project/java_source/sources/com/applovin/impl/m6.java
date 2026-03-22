package com.applovin.impl;

import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.applovin.impl.sdk.utils.StringUtils;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class m6 implements SharedPreferences.OnSharedPreferenceChangeListener {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.k f3196a;
    private final SharedPreferences b;
    private Integer c;
    private Integer d;
    private Integer e;
    private String f;
    private String g;
    private String h;
    private String i;
    private String j;

    public m6(com.applovin.impl.sdk.k kVar) {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(com.applovin.impl.sdk.k.o());
        this.b = defaultSharedPreferences;
        this.f3196a = kVar;
        defaultSharedPreferences.registerOnSharedPreferenceChangeListener(this);
        this.c = a(n4.s.a());
        this.d = a(n4.t.a());
        this.e = h();
        this.f = (String) o4.a(n4.v, (Object) null, defaultSharedPreferences, false);
        this.g = (String) o4.a(n4.w, (Object) null, defaultSharedPreferences, false);
        this.h = (String) o4.a(n4.x, (Object) null, defaultSharedPreferences, false);
        this.i = (String) o4.a(n4.z, (Object) null, defaultSharedPreferences, false);
        this.j = (String) o4.a(n4.B, (Object) null, defaultSharedPreferences, false);
        b(this.g);
    }

    private Integer h() {
        String a2 = n4.u.a();
        if (this.b.contains(a2)) {
            Integer num = (Integer) o4.a(a2, null, Integer.class, this.b, false);
            if (num != null) {
                if (num.intValue() != 1 && num.intValue() != 0) {
                    this.f3196a.O();
                    if (com.applovin.impl.sdk.o.a()) {
                        com.applovin.impl.sdk.o O = this.f3196a.O();
                        O.b("TcfManager", "Integer value (" + num + ") for " + a2 + " is invalid - setting GDPR Applies to null");
                    }
                    return null;
                }
                return num;
            }
            Long l = (Long) o4.a(a2, null, Long.class, this.b, false);
            if (l != null) {
                if (l.longValue() != 1 && l.longValue() != 0) {
                    this.f3196a.O();
                    if (com.applovin.impl.sdk.o.a()) {
                        com.applovin.impl.sdk.o O2 = this.f3196a.O();
                        O2.b("TcfManager", "Long value (" + l + ") for " + a2 + " is invalid - setting GDPR Applies to null");
                    }
                    return null;
                }
                return Integer.valueOf(l.intValue());
            }
            Boolean bool = (Boolean) o4.a(a2, null, Boolean.class, this.b, false);
            if (bool != null) {
                return Integer.valueOf(bool.booleanValue() ? 1 : 0);
            }
            String str = (String) o4.a(a2, null, String.class, this.b, false);
            if (str != null) {
                if (!"1".equals(str) && !"true".equals(str)) {
                    if (!"0".equals(str) && !"false".equals(str)) {
                        this.f3196a.O();
                        if (com.applovin.impl.sdk.o.a()) {
                            com.applovin.impl.sdk.o O3 = this.f3196a.O();
                            O3.b("TcfManager", "String value (" + str + ") for " + a2 + " is invalid - setting GDPR Applies to null");
                        }
                        return null;
                    }
                    return 0;
                }
                return 1;
            }
        }
        return null;
    }

    public Boolean a(int i) {
        return p6.a(i, this.g);
    }

    public boolean b() {
        return p6.a(this.g);
    }

    public String c() {
        return this.g;
    }

    public String d() {
        return k6.a(this.c);
    }

    public Integer e() {
        return this.c;
    }

    public Integer f() {
        return this.d;
    }

    public Integer g() {
        return this.e;
    }

    public String i() {
        return a("CMP Name", d()) + a("CMP SDK ID", this.c) + a("CMP SDK Version", this.d) + a(n4.u.a(), this.e) + a(n4.v.a(), this.f) + a(n4.w.a(), this.g);
    }

    public String j() {
        return this.f;
    }

    public String k() {
        return this.h;
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if (str == null) {
            this.f3196a.O();
            if (com.applovin.impl.sdk.o.a()) {
                this.f3196a.O().a("TcfManager", "SharedPreferences are cleared - setting all stored TC data to null");
            }
            a();
        } else if (str.equals(n4.s.a())) {
            this.c = a(str);
            this.f3196a.O();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o O = this.f3196a.O();
                O.a("TcfManager", "SharedPreferences entry updated - key: " + str + ", value: " + this.c);
            }
            this.f3196a.R0();
        } else if (str.equals(n4.t.a())) {
            this.d = a(str);
            this.f3196a.O();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o O2 = this.f3196a.O();
                O2.a("TcfManager", "SharedPreferences entry updated - key: " + str + ", value: " + this.d);
            }
        } else if (str.equals(n4.u.a())) {
            this.e = h();
            this.f3196a.O();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o O3 = this.f3196a.O();
                O3.a("TcfManager", "SharedPreferences entry updated - key: " + str + ", value: " + this.e);
            }
        } else if (str.equals(n4.v.a())) {
            this.f = (String) o4.a(str, (Object) null, String.class, sharedPreferences);
            this.f3196a.O();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o O4 = this.f3196a.O();
                O4.a("TcfManager", "SharedPreferences entry updated - key: " + str + ", value: " + this.f);
            }
            this.f3196a.R0();
        } else if (str.equals(n4.w.a())) {
            this.g = (String) o4.a(str, (Object) null, String.class, sharedPreferences);
            this.f3196a.O();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o O5 = this.f3196a.O();
                O5.a("TcfManager", "SharedPreferences entry updated - key: " + str + ", value: " + this.g);
            }
            b(this.g);
        } else if (str.equals(n4.x.a())) {
            this.h = (String) o4.a(str, (Object) null, String.class, sharedPreferences);
            this.f3196a.O();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o O6 = this.f3196a.O();
                O6.a("TcfManager", "SharedPreferences entry updated - key: " + str + ", value: " + this.h);
            }
        } else if (str.equals(n4.y.a())) {
            String str2 = (String) o4.a(str, (Object) null, String.class, sharedPreferences);
            this.f3196a.O();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o O7 = this.f3196a.O();
                O7.a("TcfManager", "SharedPreferences entry updated - key: " + str + ", value: " + str2);
            }
        } else if (str.equals(n4.z.a())) {
            this.i = (String) o4.a(str, (Object) null, String.class, sharedPreferences);
            this.f3196a.O();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o O8 = this.f3196a.O();
                O8.a("TcfManager", "SharedPreferences entry updated - key: " + str + ", value: " + this.i);
            }
        } else if (str.equals(n4.A.a())) {
            String str3 = (String) o4.a(str, (Object) null, String.class, sharedPreferences);
            this.f3196a.O();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o O9 = this.f3196a.O();
                O9.a("TcfManager", "SharedPreferences entry updated - key: " + str + ", value: " + str3);
            }
        } else if (str.equals(n4.B.a())) {
            this.j = (String) o4.a(str, (Object) null, String.class, sharedPreferences);
            this.f3196a.O();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o O10 = this.f3196a.O();
                O10.a("TcfManager", "SharedPreferences entry updated - key: " + str + ", value: " + this.j);
            }
        } else if (str.contains("IABTCF_PublisherRestrictions")) {
            String str4 = (String) o4.a(str, (Object) null, String.class, sharedPreferences);
            this.f3196a.O();
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o O11 = this.f3196a.O();
                O11.a("TcfManager", "SharedPreferences entry updated - key: " + str + ", value: " + str4);
            }
        }
    }

    private Integer a(String str) {
        if (this.b.contains(str)) {
            Integer num = (Integer) o4.a(str, null, Integer.class, this.b, false);
            if (num != null) {
                return num;
            }
            Long l = (Long) o4.a(str, null, Long.class, this.b, false);
            if (l != null && l.longValue() >= -2147483648L && l.longValue() <= 2147483647L) {
                return Integer.valueOf(l.intValue());
            }
            String str2 = (String) o4.a(str, null, String.class, this.b, false);
            if (str2 != null) {
                if (StringUtils.isNumeric(str2)) {
                    return Integer.valueOf(Integer.parseInt(str2));
                }
                this.f3196a.O();
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o O = this.f3196a.O();
                    O.b("TcfManager", "String value (" + str2 + ") for " + str + " is not numeric - storing value as null");
                }
            }
        }
        return null;
    }

    public Boolean b(int i) {
        String str = this.i;
        if (str == null) {
            return null;
        }
        return Boolean.valueOf(p6.a(str, i - 1));
    }

    public Boolean c(int i) {
        String str = this.j;
        if (str == null) {
            return null;
        }
        return Boolean.valueOf(p6.a(str, i - 1));
    }

    public Boolean d(int i) {
        String str = this.h;
        if (str == null) {
            return null;
        }
        return Boolean.valueOf(p6.a(str, i - 1));
    }

    private void b(String str) {
        this.f3196a.O();
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o O = this.f3196a.O();
            O.a("TcfManager", "Attempting to update consent from Additional Consent string: " + str);
        }
        Boolean a2 = p6.a(1301, str);
        if (a2 != null) {
            if (a2.booleanValue()) {
                this.f3196a.O();
                if (com.applovin.impl.sdk.o.a()) {
                    this.f3196a.O().a("TcfManager", "Found AppLovin ID in the list of consented ATP IDs - setting user consent to true");
                }
                l0.b(true, com.applovin.impl.sdk.k.o());
            } else {
                this.f3196a.O();
                if (com.applovin.impl.sdk.o.a()) {
                    this.f3196a.O().a("TcfManager", "Could not find AppLovin ID in the list of consented ATP IDs - setting user consent to false");
                }
                l0.b(false, com.applovin.impl.sdk.k.o());
            }
            this.f3196a.R0();
            return;
        }
        this.f3196a.O();
        if (com.applovin.impl.sdk.o.a()) {
            this.f3196a.O().a("TcfManager", "AC string is not valid or AppLovin was not listed on the CMP flow - no consent update");
        }
    }

    private void a() {
        this.c = null;
        this.e = null;
        this.f = null;
        this.g = null;
        this.h = null;
    }

    private String a(String str, Object obj) {
        StringBuilder sb = new StringBuilder();
        sb.append("\n");
        sb.append(str);
        sb.append(" - ");
        sb.append(obj != null ? obj.toString() : "No value set");
        return sb.toString();
    }
}
