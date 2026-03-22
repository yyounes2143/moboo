package com.facebook.internal.gatekeeper;

import com.google.firebase.remoteconfig.RemoteConfigConstants;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J)\u0010\u000b\u001a\u00020\n2\f\b\u0002\u0010\u0006\u001a\u00060\u0004j\u0002`\u00052\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0004\b\u000b\u0010\fJ#\u0010\r\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00072\f\b\u0002\u0010\u0006\u001a\u00060\u0004j\u0002`\u0005¢\u0006\u0004\b\r\u0010\u000eR0\u0010\u0011\u001a\u001e\u0012\b\u0012\u00060\u0004j\u0002`\u0005\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\b0\u000f0\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u0010¨\u0006\u0012"}, d2 = {"Lcom/facebook/internal/gatekeeper/GateKeeperRuntimeCache;", "", "<init>", "()V", "", "Lcom/facebook/internal/gatekeeper/AppID;", RemoteConfigConstants.RequestFieldKey.APP_ID, "", "Lcom/facebook/internal/gatekeeper/GateKeeper;", "gateKeeperList", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/util/List;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Ljava/util/List;", "j$/util/concurrent/ConcurrentHashMap", "Lj$/util/concurrent/ConcurrentHashMap;", "gateKeepers", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class GateKeeperRuntimeCache {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ConcurrentHashMap<String, ConcurrentHashMap<String, GateKeeper>> f6885Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ConcurrentHashMap<>();

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, @NotNull List<GateKeeper> list) {
        ConcurrentHashMap<String, GateKeeper> concurrentHashMap = new ConcurrentHashMap<>();
        for (GateKeeper gateKeeper : list) {
            concurrentHashMap.put(gateKeeper.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), gateKeeper);
        }
        this.f6885Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.put(str, concurrentHashMap);
    }

    @Nullable
    public final List<GateKeeper> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
        ConcurrentHashMap<String, GateKeeper> concurrentHashMap = this.f6885Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(str);
        if (concurrentHashMap == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(concurrentHashMap.size());
        for (Map.Entry<String, GateKeeper> entry : concurrentHashMap.entrySet()) {
            arrayList.add(entry.getValue());
        }
        return arrayList;
    }
}
