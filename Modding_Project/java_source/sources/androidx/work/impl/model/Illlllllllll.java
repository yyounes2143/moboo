package androidx.work.impl.model;

import java.util.Iterator;
import java.util.Set;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final /* synthetic */ class Illlllllllll {
    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(WorkTagDao workTagDao, @NotNull String str, @NotNull Set set) {
        Iterator it = set.iterator();
        while (it.hasNext()) {
            workTagDao.insert(new WorkTag((String) it.next(), str));
        }
    }
}
