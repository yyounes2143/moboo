package com.facebook.bolts;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\n\u0018\u00002\u0016\u0012\u0004\u0012\u00020\u0002\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u00030\u0001J%\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u00032\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004H\u0016¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"com/facebook/bolts/Task$Companion$whenAllResult$1", "Lcom/facebook/bolts/Continuation;", "Ljava/lang/Void;", "", "Lcom/facebook/bolts/Task;", "task", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/bolts/Task;)Ljava/util/List;", "facebook-bolts_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class Task$Companion$whenAllResult$1 implements Continuation<Void, List<Object>> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final /* synthetic */ Collection<Task<Object>> f6585Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    @Override // com.facebook.bolts.Continuation
    @NotNull
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public List<Object> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Task<Void> task) {
        if (this.f6585Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.isEmpty()) {
            return CollectionsKt.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        for (Task<Object> task2 : this.f6585Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            arrayList.add(task2.Wwwwwwwwwwwwwwwwww());
        }
        return arrayList;
    }
}
