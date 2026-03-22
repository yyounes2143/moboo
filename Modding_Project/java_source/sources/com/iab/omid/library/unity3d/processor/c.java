package com.iab.omid.library.unity3d.processor;

import android.view.View;
import androidx.annotation.NonNull;
import com.iab.omid.library.unity3d.processor.a;
import com.iab.omid.library.unity3d.utils.e;
import com.iab.omid.library.unity3d.utils.h;
import java.util.ArrayList;
import java.util.Collection;
import java.util.IdentityHashMap;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class c implements a {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final a f8465Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public c(a aVar) {
        this.f8465Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = aVar;
    }

    @NonNull
    public ArrayList<View> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        View rootView;
        ArrayList<View> arrayList = new ArrayList<>();
        com.iab.omid.library.unity3d.internal.c Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = com.iab.omid.library.unity3d.internal.c.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            Collection<com.iab.omid.library.unity3d.adsession.a> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            IdentityHashMap identityHashMap = new IdentityHashMap((Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.size() * 2) + 3);
            for (com.iab.omid.library.unity3d.adsession.a aVar : Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
                View Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = aVar.Wwwwwwwwwwwwwwwwwwwwwwwwwww();
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwww2 != null && h.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwww2) && (rootView = Wwwwwwwwwwwwwwwwwwwwwwwwwww2.getRootView()) != null && !identityHashMap.containsKey(rootView)) {
                    identityHashMap.put(rootView, rootView);
                    float Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = h.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(rootView);
                    int size = arrayList.size();
                    while (size > 0 && h.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(arrayList.get(size - 1)) > Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
                        size--;
                    }
                    arrayList.add(size, rootView);
                }
            }
        }
        return arrayList;
    }

    @Override // com.iab.omid.library.unity3d.processor.a
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(View view, JSONObject jSONObject, a.InterfaceC0074a interfaceC0074a, boolean z, boolean z2) {
        ArrayList<View> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        int size = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.size();
        int i = 0;
        while (i < size) {
            View view2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.get(i);
            i++;
            interfaceC0074a.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(view2, this.f8465Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, jSONObject, z2);
        }
    }

    @Override // com.iab.omid.library.unity3d.processor.a
    public JSONObject a(View view) {
        JSONObject Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = com.iab.omid.library.unity3d.utils.c.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(0, 0, 0, 0);
        com.iab.omid.library.unity3d.utils.c.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, e.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }
}
