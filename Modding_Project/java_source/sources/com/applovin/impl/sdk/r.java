package com.applovin.impl.sdk;

import android.adservices.measurement.MeasurementManager;
import android.adservices.topics.GetTopicsRequest;
import android.adservices.topics.GetTopicsResponse;
import android.adservices.topics.Topic;
import android.adservices.topics.TopicsManager;
import android.content.Context;
import android.net.Uri;
import android.os.OutcomeReceiver;
import android.text.TextUtils;
import android.view.InputEvent;
import com.applovin.impl.e4;
import com.applovin.impl.f6;
import com.applovin.impl.l4;
import com.applovin.impl.r5;
import com.applovin.impl.sdk.utils.JsonUtils;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class r {

    /* renamed from: a  reason: collision with root package name */
    private final k f3730a;
    private final Executor b;
    private final MeasurementManager e;
    private final TopicsManager h;
    private final Set c = new HashSet();
    private final Object d = new Object();
    private final AtomicReference f = new AtomicReference(new JSONArray());
    private final d g = new d(this, null);

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class a implements OutcomeReceiver {
        public a() {
        }

        /* renamed from: a */
        public void onError(Exception exc) {
            r.this.f3730a.O();
            if (o.a()) {
                r.this.f3730a.O().a("PrivacySandboxService", "Failed to register impression", exc);
            }
        }

        public void onResult(Object obj) {
            r.this.f3730a.O();
            if (o.a()) {
                r.this.f3730a.O().a("PrivacySandboxService", "Successfully registered impression");
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class b implements OutcomeReceiver {
        public b() {
        }

        /* renamed from: a */
        public void onError(Exception exc) {
            r.this.f3730a.O();
            if (o.a()) {
                r.this.f3730a.O().a("PrivacySandboxService", "Failed to register click", exc);
            }
        }

        public void onResult(Object obj) {
            r.this.f3730a.O();
            if (o.a()) {
                r.this.f3730a.O().a("PrivacySandboxService", "Successfully registered click");
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class c implements OutcomeReceiver {
        public c() {
        }

        /* renamed from: a */
        public void onError(Exception exc) {
            r.this.f3730a.O();
            if (o.a()) {
                r.this.f3730a.O().a("PrivacySandboxService", "Failed to register conversion", exc);
            }
        }

        public void onResult(Object obj) {
            r.this.f3730a.O();
            if (o.a()) {
                r.this.f3730a.O().a("PrivacySandboxService", "Successfully registered conversion");
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class d implements OutcomeReceiver {
        private d() {
        }

        public void a(GetTopicsResponse getTopicsResponse) {
            List<Object> topics;
            int topicId;
            long modelVersion;
            long taxonomyVersion;
            topics = getTopicsResponse.getTopics();
            int size = topics.size();
            r.this.f3730a.O();
            if (o.a()) {
                o O = r.this.f3730a.O();
                O.d("PrivacySandboxService", size + " topic(s) received");
            }
            JSONArray jSONArray = new JSONArray();
            for (Object obj : topics) {
                Topic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = androidx.privacysandbox.ads.adservices.topics.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(obj);
                JSONObject jSONObject = new JSONObject();
                topicId = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.getTopicId();
                JsonUtils.putInt(jSONObject, "id", topicId);
                modelVersion = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.getModelVersion();
                JsonUtils.putLong(jSONObject, "model", modelVersion);
                taxonomyVersion = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.getTaxonomyVersion();
                JsonUtils.putLong(jSONObject, "taxonomy", taxonomyVersion);
                jSONArray.put(jSONObject);
            }
            r.this.f.set(jSONArray);
            r.this.b(((Boolean) r.this.f3730a.a(l4.C6)).booleanValue(), ((Long) r.this.f3730a.a(l4.A6)).longValue());
        }

        public /* bridge */ /* synthetic */ void onResult(Object obj) {
            a(androidx.privacysandbox.ads.adservices.topics.Wwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(obj));
        }

        public /* synthetic */ d(r rVar, a aVar) {
            this();
        }

        /* renamed from: a */
        public void onError(Exception exc) {
            String str;
            Long l = (Long) r.this.f3730a.a(l4.B6);
            boolean z = l.longValue() == -1;
            r.this.f3730a.O();
            if (o.a()) {
                o O = r.this.f3730a.O();
                StringBuilder sb = new StringBuilder();
                sb.append("Failed to retrieve topics");
                if (z) {
                    str = "";
                } else {
                    str = ", retrying in " + l + " ms";
                }
                sb.append(str);
                O.a("PrivacySandboxService", sb.toString(), exc);
            }
            if (z) {
                return;
            }
            r.this.b(((Boolean) r.this.f3730a.a(l4.D6)).booleanValue(), l.longValue());
        }
    }

    public r(k kVar) {
        this.f3730a = kVar;
        this.b = kVar.q0().a();
        Context o = k.o();
        this.e = androidx.privacysandbox.ads.adservices.measurement.Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(o.getSystemService(androidx.privacysandbox.ads.adservices.measurement.Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()));
        this.h = androidx.privacysandbox.ads.adservices.topics.Wwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(o.getSystemService(androidx.privacysandbox.ads.adservices.topics.Wwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()));
        if (((Boolean) kVar.a(l4.z6)).booleanValue()) {
            b(((Boolean) kVar.a(l4.C6)).booleanValue(), 0L);
        }
    }

    private boolean c(String str) {
        synchronized (this.d) {
            try {
                if (this.c.contains(str)) {
                    return false;
                }
                this.c.add(str);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void b(final List list) {
        a("register impression", new Runnable() { // from class: com.applovin.impl.sdk.Kkkkkkkkkkkkkkkkkk
            @Override // java.lang.Runnable
            public final void run() {
                r.this.a(list);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(List list) {
        if (list == null || list.isEmpty() || this.e == null || !e4.e(k.D0)) {
            return;
        }
        this.f3730a.O();
        if (o.a()) {
            this.f3730a.O().a("PrivacySandboxService", "Registering impression...");
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            this.e.registerSource(Uri.parse((String) it.next()), null, this.b, new a());
        }
    }

    public void b(final List list, final InputEvent inputEvent) {
        a("register click", new Runnable() { // from class: com.applovin.impl.sdk.Kkkkkkkkkkkkkkkk
            @Override // java.lang.Runnable
            public final void run() {
                r.this.a(list, inputEvent);
            }
        });
    }

    public void b(final String str) {
        a("register conversion trigger event", new Runnable() { // from class: com.applovin.impl.sdk.Kkkkkkkkkkkkkkkkk
            @Override // java.lang.Runnable
            public final void run() {
                r.this.a(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(final boolean z, final long j) {
        a("retrieve topics", new Runnable() { // from class: com.applovin.impl.sdk.Kkkkkkkkkkkkkkkkkkkk
            @Override // java.lang.Runnable
            public final void run() {
                r.this.a(z, j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(List list, InputEvent inputEvent) {
        if (list == null || list.isEmpty() || this.e == null || !e4.e(k.D0)) {
            return;
        }
        this.f3730a.O();
        if (o.a()) {
            this.f3730a.O().a("PrivacySandboxService", "Registering click...");
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            this.e.registerSource(Uri.parse((String) it.next()), inputEvent, this.b, new b());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str) {
        if (TextUtils.isEmpty(str) || this.e == null || !e4.e(k.D0)) {
            return;
        }
        this.f3730a.O();
        if (o.a()) {
            o O = this.f3730a.O();
            O.a("PrivacySandboxService", "Registering conversion: " + str);
        }
        this.e.registerTrigger(Uri.parse(str), this.b, new c());
    }

    public JSONArray a() {
        return (JSONArray) this.f.get();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(boolean z, long j) {
        GetTopicsRequest.Builder shouldRecordObservation;
        GetTopicsRequest.Builder adsSdkName;
        final GetTopicsRequest build;
        if (this.h == null) {
            return;
        }
        shouldRecordObservation = androidx.privacysandbox.ads.adservices.topics.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().setShouldRecordObservation(z);
        adsSdkName = shouldRecordObservation.setAdsSdkName("AppLovin");
        build = adsSdkName.build();
        if (j <= 0) {
            this.h.getTopics(build, this.b, this.g);
            return;
        }
        this.f3730a.q0().a(new f6(this.f3730a, true, "getTopics", new Runnable() { // from class: com.applovin.impl.sdk.Kkkkkkkkkkkkkkkkkkk
            @Override // java.lang.Runnable
            public final void run() {
                r.this.a(build);
            }
        }), r5.b.OTHER, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(GetTopicsRequest getTopicsRequest) {
        this.h.getTopics(getTopicsRequest, this.b, this.g);
    }

    private void a(String str, Runnable runnable) {
        try {
            this.f3730a.O();
            if (o.a()) {
                o O = this.f3730a.O();
                O.a("PrivacySandboxService", "Running operation: " + str);
            }
            runnable.run();
        } catch (Throwable th) {
            this.f3730a.O();
            if (o.a()) {
                o O2 = this.f3730a.O();
                O2.a("PrivacySandboxService", "Failed to run operation: " + str, th);
            }
            if (c(str)) {
                this.f3730a.E().a("PrivacySandboxService", str, th);
            }
        }
    }
}
