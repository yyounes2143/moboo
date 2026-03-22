package com.applovin.impl;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.core.view.ViewCompat;
import com.applovin.impl.d;
import com.applovin.impl.j2;
import com.applovin.impl.k2;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.mediation.MaxDebuggerAdUnitDetailActivity;
import com.applovin.mediation.MaxDebuggerWaterfallSegmentsActivity;
import com.applovin.sdk.R;
import java.util.ArrayList;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public abstract class o extends d3 {

    /* renamed from: a  reason: collision with root package name */
    private m f3450a;
    private com.applovin.impl.sdk.k b;
    private k2 c;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class a extends k2 {
        final /* synthetic */ m e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Context context, m mVar) {
            super(context);
            this.e = mVar;
        }

        @Override // com.applovin.impl.k2
        public int b() {
            return this.e.g().size();
        }

        @Override // com.applovin.impl.k2
        public List c(int i) {
            ArrayList arrayList = new ArrayList();
            n nVar = (n) this.e.g().get(i);
            arrayList.add(o.this.c(nVar.c()));
            if (nVar.b() != null) {
                arrayList.add(o.this.a("AB Test Experiment Name", nVar.b()));
            }
            w7 d = nVar.d();
            o oVar = o.this;
            arrayList.add(oVar.a("Device ID Targeting", oVar.a(d.a())));
            o oVar2 = o.this;
            arrayList.add(oVar2.a("Device Type Targeting", oVar2.b(d.b())));
            if (d.c() != null) {
                arrayList.add(o.this.a(d.c()));
            }
            return arrayList;
        }

        @Override // com.applovin.impl.k2
        public int d(int i) {
            int i2;
            n nVar = (n) this.e.g().get(i);
            int i3 = 0;
            if (nVar.b() != null) {
                i2 = 1;
            } else {
                i2 = 0;
            }
            if (nVar.d().c() != null) {
                i3 = 1;
            }
            return i2 + 3 + i3;
        }

        @Override // com.applovin.impl.k2
        public j2 e(int i) {
            if (i == b.TARGETED_WATERFALL.ordinal()) {
                return new j4("TARGETED WATERFALL FOR CURRENT DEVICE");
            }
            if (i == b.OTHER_WATERFALLS.ordinal()) {
                return new j4("OTHER WATERFALLS");
            }
            return new j4("");
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public enum b {
        TARGETED_WATERFALL,
        OTHER_WATERFALLS
    }

    @Override // com.applovin.impl.d3
    public com.applovin.impl.sdk.k getSdk() {
        return this.b;
    }

    public void initialize(final m mVar, final com.applovin.impl.sdk.k kVar) {
        this.f3450a = mVar;
        this.b = kVar;
        a aVar = new a(this, mVar);
        this.c = aVar;
        aVar.a(new k2.a() { // from class: com.applovin.impl.O000000
            @Override // com.applovin.impl.k2.a
            public final void a(d2 d2Var, j2 j2Var) {
                o.this.a(kVar, mVar, d2Var, j2Var);
            }
        });
        this.c.notifyDataSetChanged();
    }

    @Override // com.applovin.impl.d3, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.mediation_debugger_list_view);
        setTitle(this.f3450a.d());
        ListView listView = (ListView) findViewById(R.id.listView);
        listView.setAdapter((ListAdapter) this.c);
        listView.setDividerHeight(0);
    }

    @Override // com.applovin.impl.d3, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        k2 k2Var = this.c;
        if (k2Var != null) {
            k2Var.a((k2.a) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String b(String str) {
        if (str.equals("phone")) {
            return "Phones";
        }
        if (str.equals("tablet")) {
            return "Tablets";
        }
        return "All";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public j2 c(String str) {
        return j2.a(j2.c.RIGHT_DETAIL).b(StringUtils.createSpannedString(str, ViewCompat.MEASURED_STATE_MASK, 18, 1)).a(this).a(true).a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(final com.applovin.impl.sdk.k kVar, final m mVar, final d2 d2Var, j2 j2Var) {
        if (d2Var.a() == 0) {
            d.a(this, MaxDebuggerAdUnitDetailActivity.class, kVar.e(), new d.b() { // from class: com.applovin.impl.O00000000
                @Override // com.applovin.impl.d.b
                public final void a(Activity activity) {
                    o.a(m.this, d2Var, kVar, (MaxDebuggerAdUnitDetailActivity) activity);
                }
            });
        } else {
            d.a(this, MaxDebuggerWaterfallSegmentsActivity.class, kVar.e(), new d.b() { // from class: com.applovin.impl.O0000000
                @Override // com.applovin.impl.d.b
                public final void a(Activity activity) {
                    o.a(m.this, d2Var, kVar, (MaxDebuggerWaterfallSegmentsActivity) activity);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(m mVar, d2 d2Var, com.applovin.impl.sdk.k kVar, MaxDebuggerAdUnitDetailActivity maxDebuggerAdUnitDetailActivity) {
        maxDebuggerAdUnitDetailActivity.initialize(mVar, (n) mVar.g().get(d2Var.b()), null, kVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(m mVar, d2 d2Var, com.applovin.impl.sdk.k kVar, MaxDebuggerWaterfallSegmentsActivity maxDebuggerWaterfallSegmentsActivity) {
        n nVar = (n) mVar.g().get(d2Var.b());
        maxDebuggerWaterfallSegmentsActivity.initialize(nVar.c(), nVar.d().c(), kVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public j2 a(String str, String str2) {
        return j2.a(j2.c.RIGHT_DETAIL).d(str).c(str2).a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public j2 a(List list) {
        j2.b d = j2.a(j2.c.DETAIL).d("Segment Targeting");
        return d.a(StringUtils.createSpannedString(list.size() + " segment group(s)", -7829368, 14)).a(this).a(true).a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String a(String str) {
        if (str.equals("idfa")) {
            return "IDFA Only";
        }
        if (str.equals("dnt")) {
            return "No IDFA Only";
        }
        return "All";
    }
}
