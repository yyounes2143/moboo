package com.iab.omid.library.unity3d.processor;

import android.annotation.TargetApi;
import android.view.View;
import android.view.ViewGroup;
import com.iab.omid.library.unity3d.processor.a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class d implements a {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int[] f8466Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new int[2];

    @TargetApi(21)
    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ViewGroup viewGroup, JSONObject jSONObject, a.InterfaceC0074a interfaceC0074a, boolean z) {
        HashMap hashMap = new HashMap();
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View childAt = viewGroup.getChildAt(i);
            ArrayList arrayList = (ArrayList) hashMap.get(Float.valueOf(childAt.getZ()));
            if (arrayList == null) {
                arrayList = new ArrayList();
                hashMap.put(Float.valueOf(childAt.getZ()), arrayList);
            }
            arrayList.add(childAt);
        }
        ArrayList arrayList2 = new ArrayList(hashMap.keySet());
        Collections.sort(arrayList2);
        int size = arrayList2.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList2.get(i2);
            i2++;
            ArrayList arrayList3 = (ArrayList) hashMap.get((Float) obj);
            int size2 = arrayList3.size();
            int i3 = 0;
            while (i3 < size2) {
                Object obj2 = arrayList3.get(i3);
                i3++;
                interfaceC0074a.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((View) obj2, this, jSONObject, z);
            }
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ViewGroup viewGroup, JSONObject jSONObject, a.InterfaceC0074a interfaceC0074a, boolean z) {
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            interfaceC0074a.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(viewGroup.getChildAt(i), this, jSONObject, z);
        }
    }

    @Override // com.iab.omid.library.unity3d.processor.a
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(View view, JSONObject jSONObject, a.InterfaceC0074a interfaceC0074a, boolean z, boolean z2) {
        if (!(view instanceof ViewGroup)) {
            return;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        if (z) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(viewGroup, jSONObject, interfaceC0074a, z2);
        } else {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(viewGroup, jSONObject, interfaceC0074a, z2);
        }
    }

    @Override // com.iab.omid.library.unity3d.processor.a
    public JSONObject a(View view) {
        if (view == null) {
            return com.iab.omid.library.unity3d.utils.c.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(0, 0, 0, 0);
        }
        int width = view.getWidth();
        int height = view.getHeight();
        view.getLocationOnScreen(this.f8466Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        int[] iArr = this.f8466Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        return com.iab.omid.library.unity3d.utils.c.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(iArr[0], iArr[1], width, height);
    }
}
