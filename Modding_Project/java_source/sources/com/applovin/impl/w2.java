package com.applovin.impl;

import android.os.Bundle;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.impl.d;
import com.applovin.impl.k2;
import com.applovin.impl.v2;
import com.applovin.impl.x2;
import com.applovin.mediation.MaxDebuggerMultiAdActivity;
import com.applovin.sdk.R;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public abstract class w2 extends d3 {

    /* renamed from: a  reason: collision with root package name */
    private x2 f3799a;
    private ListView b;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class a implements k2.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ v2 f3800a;

        /* compiled from: Proguard */
        /* renamed from: com.applovin.impl.w2$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public class C0027a implements d.b {
            public C0027a() {
            }

            @Override // com.applovin.impl.d.b
            public void a(MaxDebuggerMultiAdActivity maxDebuggerMultiAdActivity) {
                maxDebuggerMultiAdActivity.initialize(a.this.f3800a);
            }
        }

        public a(v2 v2Var) {
            this.f3800a = v2Var;
        }

        @Override // com.applovin.impl.k2.a
        public void a(d2 d2Var, j2 j2Var) {
            if (d2Var.b() == x2.a.TEST_ADS.ordinal()) {
                com.applovin.impl.sdk.k o = this.f3800a.o();
                v2.b y = this.f3800a.y();
                if (w2.this.f3799a.a(d2Var)) {
                    if (v2.b.READY == y) {
                        d.a(w2.this, MaxDebuggerMultiAdActivity.class, o.e(), new C0027a());
                        return;
                    } else if (v2.b.DISABLED == y) {
                        o.s0().a();
                        z6.a(j2Var.c(), j2Var.b(), w2.this);
                        return;
                    } else {
                        z6.a(j2Var.c(), j2Var.b(), w2.this);
                        return;
                    }
                }
                z6.a(j2Var.c(), j2Var.b(), w2.this);
                return;
            }
            z6.a(j2Var.c(), j2Var.b(), w2.this);
        }
    }

    public w2() {
        this.communicatorTopics.add("adapter_initialization_status");
        this.communicatorTopics.add("network_sdk_version_updated");
    }

    @Override // com.applovin.impl.d3
    public com.applovin.impl.sdk.k getSdk() {
        x2 x2Var = this.f3799a;
        if (x2Var != null) {
            return x2Var.h().o();
        }
        return null;
    }

    public void initialize(v2 v2Var) {
        setTitle(v2Var.g());
        x2 x2Var = new x2(v2Var, this);
        this.f3799a = x2Var;
        x2Var.a(new a(v2Var));
    }

    @Override // com.applovin.impl.d3, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.mediation_debugger_list_view);
        ListView listView = (ListView) findViewById(R.id.listView);
        this.b = listView;
        listView.setAdapter((ListAdapter) this.f3799a);
    }

    @Override // com.applovin.impl.d3, com.applovin.communicator.AppLovinCommunicatorSubscriber
    public void onMessageReceived(AppLovinCommunicatorMessage appLovinCommunicatorMessage) {
        if (this.f3799a.h().b().equals(appLovinCommunicatorMessage.getMessageData().getString("adapter_class", ""))) {
            this.f3799a.k();
            this.f3799a.c();
        }
    }
}
