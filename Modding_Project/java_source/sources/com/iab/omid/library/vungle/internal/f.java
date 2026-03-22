package com.iab.omid.library.vungle.internal;

import android.view.View;
import androidx.annotation.Nullable;
import com.iab.omid.library.vungle.adsession.FriendlyObstructionPurpose;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;
/* loaded from: classes5.dex */
public class f {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final Pattern f8605Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Pattern.compile("^[a-zA-Z0-9 ]+$");

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<e> f8606Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList();

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f8606Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.clear();
    }

    public final e Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(View view) {
        for (e eVar : this.f8606Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            if (eVar.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().get() == view) {
                return eVar;
            }
        }
        return null;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        if (str != null) {
            if (str.length() <= 50) {
                if (!f8605Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.matcher(str).matches()) {
                    throw new IllegalArgumentException("FriendlyObstruction has detailed reason that contains characters not in [a-z][A-Z][0-9] or space");
                }
                return;
            }
            throw new IllegalArgumentException("FriendlyObstruction has detailed reason over 50 characters in length");
        }
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(View view, FriendlyObstructionPurpose friendlyObstructionPurpose, @Nullable String str) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(view);
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(view) == null) {
            this.f8606Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(new e(view, friendlyObstructionPurpose, str));
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(View view) {
        if (view != null) {
            return;
        }
        throw new IllegalArgumentException("FriendlyObstruction is null");
    }

    public List<e> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f8606Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
