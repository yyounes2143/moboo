package com.iab.omid.library.mmadbridge.processor;

import android.view.View;
import androidx.annotation.NonNull;
import com.iab.omid.library.mmadbridge.processor.a;
import com.iab.omid.library.mmadbridge.utils.e;
import com.iab.omid.library.mmadbridge.utils.h;
import java.util.ArrayList;
import java.util.Collection;
import java.util.IdentityHashMap;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class c implements a {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final a f8325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public c(a aVar) {
        this.f8325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = aVar;
    }

    @NonNull
    public ArrayList<View> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        View rootView;
        ArrayList<View> arrayList = new ArrayList<>();
        com.iab.omid.library.mmadbridge.internal.c Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = com.iab.omid.library.mmadbridge.internal.c.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            Collection<com.iab.omid.library.mmadbridge.adsession.a> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            IdentityHashMap identityHashMap = new IdentityHashMap((Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.size() * 2) + 3);
            for (com.iab.omid.library.mmadbridge.adsession.a aVar : Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
                View Wwwwwwwwwwwwwwwwwwwww2 = aVar.Wwwwwwwwwwwwwwwwwwwww();
                if (Wwwwwwwwwwwwwwwwwwwww2 != null && h.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwww2) && (rootView = Wwwwwwwwwwwwwwwwwwwww2.getRootView()) != null && !identityHashMap.containsKey(rootView)) {
                    identityHashMap.put(rootView, rootView);
                    float Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = h.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(rootView);
                    int size = arrayList.size();
                    while (size > 0 && h.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(arrayList.get(size - 1)) > Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
                        size--;
                    }
                    arrayList.add(size, rootView);
                }
            }
        }
        return arrayList;
    }

    @Override // com.iab.omid.library.mmadbridge.processor.a
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(View view, JSONObject jSONObject, a.InterfaceC0070a interfaceC0070a, boolean z, boolean z2) {
        ArrayList<View> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        int size = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.size();
        int i = 0;
        while (i < size) {
            View view2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.get(i);
            i++;
            interfaceC0070a.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(view2, this.f8325Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, jSONObject, z2);
        }
    }

    @Override // com.iab.omid.library.mmadbridge.processor.a
    public JSONObject a(View view) {
        JSONObject Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = com.iab.omid.library.mmadbridge.utils.c.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(0, 0, 0, 0);
        com.iab.omid.library.mmadbridge.utils.c.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, e.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }
}
