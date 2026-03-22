package com.applovin.impl.sdk;

import android.os.SystemClock;
import android.text.TextUtils;
import com.applovin.impl.a2;
import com.applovin.impl.a7;
import com.applovin.impl.d4;
import com.applovin.impl.f6;
import com.applovin.impl.l4;
import com.applovin.impl.r5;
import com.applovin.impl.sdk.ad.AppLovinAdImpl;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.w4;
import com.applovin.impl.y1;
import com.applovin.sdk.AppLovinAdType;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.InputStream;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class c {
    private static final File b = new File(k.o().getFilesDir(), "al/persisted-ads");

    /* renamed from: a  reason: collision with root package name */
    private final k f3672a;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class a implements d4 {

        /* renamed from: a  reason: collision with root package name */
        private final String f3673a;
        private final AppLovinAdType b;
        private final boolean c;
        private final long d;
        private final long e;

        public a(String str, AppLovinAdType appLovinAdType, boolean z, long j, long j2) {
            this.f3673a = str;
            this.b = appLovinAdType;
            this.c = z;
            this.d = j;
            this.e = j2;
        }

        public boolean a(Object obj) {
            return obj instanceof a;
        }

        public long b() {
            return this.e;
        }

        public long c() {
            return this.d;
        }

        public String d() {
            return this.f3673a + "_" + this.b;
        }

        public String e() {
            return this.f3673a;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (!aVar.a(this)) {
                return false;
            }
            String e = e();
            String e2 = aVar.e();
            if (e != null ? !e.equals(e2) : e2 != null) {
                return false;
            }
            AppLovinAdType f = f();
            AppLovinAdType f2 = aVar.f();
            if (f != null ? f.equals(f2) : f2 == null) {
                return true;
            }
            return false;
        }

        public AppLovinAdType f() {
            return this.b;
        }

        public boolean g() {
            return this.c;
        }

        public int hashCode() {
            int hashCode;
            String e = e();
            int i = 43;
            if (e == null) {
                hashCode = 43;
            } else {
                hashCode = e.hashCode();
            }
            AppLovinAdType f = f();
            int i2 = (hashCode + 59) * 59;
            if (f != null) {
                i = f.hashCode();
            }
            return i2 + i;
        }

        public String toString() {
            return "AdPersistenceFileService.PersistedAdFilePath(id=" + e() + ", type=" + f() + ", isAdServerAd=" + g() + ", expiryTimeMillis=" + c() + ", appLaunchTimestamp=" + b() + ")";
        }

        public static a a(com.applovin.impl.sdk.ad.b bVar) {
            return a(bVar, 0L, 0L);
        }

        public static a a(com.applovin.impl.sdk.ad.b bVar, long j, long j2) {
            if (bVar == null) {
                return null;
            }
            return new a(StringUtils.isValidString(bVar.M()) ? bVar.M() : UUID.randomUUID().toString(), bVar.getType(), bVar instanceof com.applovin.impl.sdk.ad.a, SystemClock.elapsedRealtime() + j, j2);
        }

        public static a a(JSONObject jSONObject, k kVar) {
            String string = JsonUtils.getString(jSONObject, "id", "");
            String string2 = JsonUtils.getString(jSONObject, "type", "");
            Boolean bool = JsonUtils.getBoolean(jSONObject, "is_ad_server_ad", null);
            long j = JsonUtils.getLong(jSONObject, "expiry_time_millis", 0L);
            long j2 = JsonUtils.getLong(jSONObject, "app_launch_timestamp", 0L);
            if (TextUtils.isEmpty(string) || TextUtils.isEmpty(string2) || bool == null) {
                return null;
            }
            return new a(string, AppLovinAdType.fromString(string2), bool.booleanValue(), j, j2);
        }

        @Override // com.applovin.impl.d4
        public JSONObject a() {
            JSONObject jSONObject = new JSONObject();
            JsonUtils.putString(jSONObject, "id", this.f3673a);
            JsonUtils.putString(jSONObject, "type", this.b.toString());
            JsonUtils.putBoolean(jSONObject, "is_ad_server_ad", this.c);
            JsonUtils.putLong(jSONObject, "expiry_time_millis", this.d);
            JsonUtils.putLong(jSONObject, "app_launch_timestamp", this.e);
            return jSONObject;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface b {
        void a(a aVar);
    }

    /* compiled from: Proguard */
    /* renamed from: com.applovin.impl.sdk.c$c  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public interface InterfaceC0022c {
        void a(com.applovin.impl.sdk.ad.b bVar, String str);
    }

    public c(k kVar) {
        this.f3672a = kVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(com.applovin.impl.sdk.ad.b bVar, b bVar2) {
        a a2 = a.a(bVar, ((Long) this.f3672a.a(l4.V0)).longValue(), k.n());
        File a3 = a(a2);
        if (a3 == null) {
            a("Could not persist incompatible ad", bVar, bVar2);
            return;
        }
        try {
            JSONObject a4 = bVar.a();
            if (a4 == null) {
                a("Could not serialize ad for persistence", bVar, bVar2);
                return;
            }
            if (this.f3672a.H().a((InputStream) new ByteArrayInputStream(a4.toString().getBytes("UTF-8")), a3, true)) {
                a(a2, bVar, bVar2);
            } else {
                a("Failed to write persisted ad to disk", bVar, bVar2);
            }
        } catch (Throwable th) {
            a("Ad could not be persisted", bVar, bVar2);
            this.f3672a.E().a("AdPersistenceFileService", th, CollectionUtils.map("error_message", "Ad could not be persisted"));
        }
    }

    public void b(final com.applovin.impl.sdk.ad.b bVar, final b bVar2) {
        if (!b()) {
            a("Ad Persistence directory could not be created", bVar, bVar2);
        } else {
            this.f3672a.q0().a((w4) new f6(this.f3672a, "persistAd", new Runnable() { // from class: com.applovin.impl.sdk.Wwwwwwwwwwwwwwwwwwwwwwwww
                @Override // java.lang.Runnable
                public final void run() {
                    c.this.a(bVar, bVar2);
                }
            }), r5.b.CACHING);
        }
    }

    private boolean b() {
        File file = b;
        if (file.exists()) {
            return true;
        }
        return file.mkdir();
    }

    public void b(a aVar) {
        File a2 = a(aVar);
        if (a2 != null) {
            a2.delete();
        }
    }

    public void a(final a aVar, final InterfaceC0022c interfaceC0022c) {
        final File a2 = a(aVar);
        if (a2 != null && a2.exists()) {
            this.f3672a.q0().a((w4) new f6(this.f3672a, "retrievePersistedAd", new Runnable() { // from class: com.applovin.impl.sdk.Wwwwwwwwwwwwwwwwwwwwwwww
                @Override // java.lang.Runnable
                public final void run() {
                    c.this.a(a2, interfaceC0022c, aVar);
                }
            }), r5.b.OTHER);
        } else {
            interfaceC0022c.a(null, "Persisted ad could not be retrieved: Retrieval failed");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(File file, InterfaceC0022c interfaceC0022c, a aVar) {
        com.applovin.impl.sdk.ad.b a2;
        String f = this.f3672a.H().f(file);
        if (f == null) {
            interfaceC0022c.a(null, "Persisted ad could not be retrieved: Read failed");
            return;
        }
        try {
            JSONObject jsonObjectFromJsonString = JsonUtils.jsonObjectFromJsonString(f, new JSONObject());
            JsonUtils.putBoolean(JsonUtils.getJSONObject(jsonObjectFromJsonString, "full_response", new JSONObject()), "is_persisted_ad", true);
            if (aVar.g()) {
                a2 = com.applovin.impl.sdk.ad.a.a(jsonObjectFromJsonString, this.f3672a);
            } else {
                a2 = a7.a(jsonObjectFromJsonString, this.f3672a);
            }
            if (a2 == null) {
                interfaceC0022c.a(null, "Persisted ad could not be retrieved: Deserialization failed");
            } else {
                interfaceC0022c.a(a2, null);
            }
        } catch (Throwable th) {
            interfaceC0022c.a(null, "Persisted ad could not be retrieved: Deserialization failed");
            this.f3672a.E().a("AdPersistenceFileService", th, CollectionUtils.map("error_message", "Persisted ad could not be retrieved: Deserialization failed"));
        }
    }

    private File a(a aVar) {
        if (aVar == null) {
            return null;
        }
        return new File(b.getAbsolutePath() + "/" + aVar.d());
    }

    private void a(a aVar, com.applovin.impl.sdk.ad.b bVar, b bVar2) {
        if (bVar2 == null) {
            return;
        }
        this.f3672a.O();
        if (o.a()) {
            this.f3672a.O().a("AdPersistenceFileService", "Ad was persisted successfully");
        }
        bVar2.a(aVar);
        this.f3672a.g().a(y1.F, bVar);
    }

    private void a(String str, com.applovin.impl.sdk.ad.b bVar, b bVar2) {
        if (bVar2 == null) {
            return;
        }
        this.f3672a.O();
        if (o.a()) {
            this.f3672a.O().a("AdPersistenceFileService", str);
        }
        bVar2.a(null);
        Map a2 = a2.a((AppLovinAdImpl) bVar);
        CollectionUtils.putStringIfValid("error_message", str, a2);
        this.f3672a.g().d(y1.G, a2);
    }

    public void a(List list) {
        File[] listFiles = b.listFiles();
        if (listFiles == null) {
            return;
        }
        boolean z = false;
        for (File file : listFiles) {
            Iterator it = list.iterator();
            while (true) {
                if (it.hasNext()) {
                    if (((a) it.next()).d().equals(file.getName())) {
                        z = true;
                        break;
                    }
                } else {
                    break;
                }
            }
            if (!z) {
                file.delete();
            }
        }
    }

    public void a() {
        File[] listFiles;
        File file = b;
        if (file.exists() && (listFiles = file.listFiles()) != null) {
            for (File file2 : listFiles) {
                file2.delete();
            }
        }
    }
}
