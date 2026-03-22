package j$.time.zone;

import java.security.PrivilegedAction;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public final class h implements PrivilegedAction {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ArrayList f11801a;

    public h(ArrayList arrayList) {
        this.f11801a = arrayList;
    }

    @Override // java.security.PrivilegedAction
    public final Object run() {
        String property = System.getProperty("java.time.zone.DefaultZoneRulesProvider");
        if (property != null) {
            try {
                i iVar = (i) i.class.cast(Class.forName(property, true, i.class.getClassLoader()).newInstance());
                i.b(iVar);
                this.f11801a.add(iVar);
                return null;
            } catch (Exception e) {
                throw new Error(e);
            }
        }
        i.b(new i());
        return null;
    }
}
