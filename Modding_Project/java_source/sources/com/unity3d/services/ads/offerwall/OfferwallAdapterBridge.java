package com.unity3d.services.ads.offerwall;

import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import com.unity3d.ads.core.domain.offerwall.OfferwallEventData;
import com.unity3d.services.ads.gmascar.bridges.mobileads.MobileAdsBridge;
import com.unity3d.services.core.log.DeviceLog;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.HashMap;
import kotlin.Metadata;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableSharedFlow;
import kotlinx.coroutines.flow.SharedFlow;
import kotlinx.coroutines.flow.SharedFlowKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0011\u001a\u00020\u000eH\u0002J\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0013\u001a\u00020\u0001H\u0002J\u0006\u0010\u0014\u001a\u00020\u000eJ\u000e\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u000eJ\u0006\u0010\u0017\u001a\u00020\u0016J\u000e\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u0011\u001a\u00020\u000eJ\u000e\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0011\u001a\u00020\u000eJ\b\u0010\u001b\u001a\u00020\u001cH\u0002R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\t¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR.\u0010\f\u001a\"\u0012\u0004\u0012\u00020\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u00010\rj\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u0001`\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001d"}, d2 = {"Lcom/unity3d/services/ads/offerwall/OfferwallAdapterBridge;", "", "scope", "Lkotlinx/coroutines/CoroutineScope;", "(Lkotlinx/coroutines/CoroutineScope;)V", "_offerwallEventFlow", "Lkotlinx/coroutines/flow/MutableSharedFlow;", "Lcom/unity3d/ads/core/domain/offerwall/OfferwallEventData;", "offerwallEventFlow", "Lkotlinx/coroutines/flow/SharedFlow;", "getOfferwallEventFlow", "()Lkotlinx/coroutines/flow/SharedFlow;", "placementsMap", "Ljava/util/HashMap;", "", "Lkotlin/collections/HashMap;", "getPlacement", HandleInvocationsFromAdViewer.KEY_PLACEMENT_NAME, "getPlacementName", "placementObj", MobileAdsBridge.versionMethodName, "isAdReady", "", "isConnected", "loadAd", "", "showAd", "tapjoyPlacementListener", "Ljava/lang/reflect/InvocationHandler;", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes6.dex */
public final class OfferwallAdapterBridge {
    @NotNull
    private final MutableSharedFlow<OfferwallEventData> _offerwallEventFlow;
    @NotNull
    private final SharedFlow<OfferwallEventData> offerwallEventFlow;
    @NotNull
    private final HashMap<String, Object> placementsMap;
    @NotNull
    private final CoroutineScope scope;

    public OfferwallAdapterBridge(@NotNull CoroutineScope coroutineScope) {
        this.scope = coroutineScope;
        MutableSharedFlow<OfferwallEventData> MutableSharedFlow$default = SharedFlowKt.MutableSharedFlow$default(0, 0, null, 7, null);
        this._offerwallEventFlow = MutableSharedFlow$default;
        this.offerwallEventFlow = FlowKt.asSharedFlow(MutableSharedFlow$default);
        this.placementsMap = new HashMap<>();
    }

    private final Object getPlacement(String str) {
        return Class.forName("com.tapjoy.Tapjoy").getDeclaredMethod("getPlacement", String.class, Class.forName("com.tapjoy.TJPlacementListener")).invoke(null, str, Proxy.newProxyInstance(Class.forName("com.tapjoy.TJPlacementListener").getClassLoader(), new Class[]{Class.forName("com.tapjoy.TJPlacementListener")}, tapjoyPlacementListener()));
    }

    private final String getPlacementName(Object obj) {
        return (String) obj.getClass().getDeclaredMethod("getName", null).invoke(obj, null);
    }

    private final InvocationHandler tapjoyPlacementListener() {
        return new InvocationHandler() { // from class: com.unity3d.services.ads.offerwall.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.reflect.InvocationHandler
            public final Object invoke(Object obj, Method method, Object[] objArr) {
                Object tapjoyPlacementListener$lambda$0;
                tapjoyPlacementListener$lambda$0 = OfferwallAdapterBridge.tapjoyPlacementListener$lambda$0(OfferwallAdapterBridge.this, obj, method, objArr);
                return tapjoyPlacementListener$lambda$0;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object tapjoyPlacementListener$lambda$0(OfferwallAdapterBridge offerwallAdapterBridge, Object obj, Method method, Object[] objArr) {
        String str;
        String name = method.getName();
        if (name != null) {
            boolean z = false;
            switch (name.hashCode()) {
                case -1508301783:
                    if (name.equals("onContentReady")) {
                        String placementName = offerwallAdapterBridge.getPlacementName(objArr[0]);
                        DeviceLog.debug("Placement content ready: " + placementName);
                        BuildersKt__Builders_commonKt.launch$default(offerwallAdapterBridge.scope, null, null, new OfferwallAdapterBridge$tapjoyPlacementListener$1$3(offerwallAdapterBridge, placementName, null), 3, null);
                        break;
                    }
                    break;
                case -1482787952:
                    if (name.equals("onContentDismiss")) {
                        String placementName2 = offerwallAdapterBridge.getPlacementName(objArr[0]);
                        DeviceLog.debug("Placement content dismissed: " + placementName2);
                        BuildersKt__Builders_commonKt.launch$default(offerwallAdapterBridge.scope, null, null, new OfferwallAdapterBridge$tapjoyPlacementListener$1$5(offerwallAdapterBridge, placementName2, null), 3, null);
                        break;
                    }
                    break;
                case 89925559:
                    if (name.equals("onContentShow")) {
                        String placementName3 = offerwallAdapterBridge.getPlacementName(objArr[0]);
                        DeviceLog.debug("Placement content shown: " + placementName3);
                        BuildersKt__Builders_commonKt.launch$default(offerwallAdapterBridge.scope, null, null, new OfferwallAdapterBridge$tapjoyPlacementListener$1$4(offerwallAdapterBridge, placementName3, null), 3, null);
                        break;
                    }
                    break;
                case 1356881459:
                    if (name.equals("onRequestSuccess")) {
                        Object obj2 = objArr[0];
                        String placementName4 = offerwallAdapterBridge.getPlacementName(obj2);
                        Boolean bool = (Boolean) obj2.getClass().getDeclaredMethod("isContentAvailable", null).invoke(obj2, null);
                        if (bool != null) {
                            z = bool.booleanValue();
                        }
                        DeviceLog.debug("Placement request succeeded: " + placementName4 + " - isContentAvailable: " + z);
                        BuildersKt__Builders_commonKt.launch$default(offerwallAdapterBridge.scope, null, null, new OfferwallAdapterBridge$tapjoyPlacementListener$1$1(z, offerwallAdapterBridge, placementName4, null), 3, null);
                        break;
                    }
                    break;
                case 2137477050:
                    if (name.equals("onRequestFailure")) {
                        String placementName5 = offerwallAdapterBridge.getPlacementName(objArr[0]);
                        HashMap<String, Object> hashMap = offerwallAdapterBridge.placementsMap;
                        if (placementName5 == null) {
                            str = "";
                        } else {
                            str = placementName5;
                        }
                        hashMap.remove(str);
                        Object obj3 = objArr[1];
                        DeviceLog.error("Placement request failed: " + placementName5 + " - errorCode: " + ((Integer) obj3.getClass().getField("code").get(obj3)) + ", errorMessage: " + ((String) obj3.getClass().getField("message").get(obj3)));
                        BuildersKt__Builders_commonKt.launch$default(offerwallAdapterBridge.scope, null, null, new OfferwallAdapterBridge$tapjoyPlacementListener$1$2(offerwallAdapterBridge, placementName5, null), 3, null);
                        break;
                    }
                    break;
            }
        }
        return null;
    }

    @NotNull
    public final SharedFlow<OfferwallEventData> getOfferwallEventFlow() {
        return this.offerwallEventFlow;
    }

    @NotNull
    public final String getVersion() {
        try {
            String str = (String) Class.forName("com.tapjoy.Tapjoy").getDeclaredMethod(MobileAdsBridge.versionMethodName, null).invoke(null, null);
            if (str == null) {
                return "0.0.0";
            }
            return str;
        } catch (Exception unused) {
            return "0.0.0";
        }
    }

    public final boolean isAdReady(@NotNull String str) {
        Method method;
        Object placement = getPlacement(str);
        Object obj = null;
        if (placement != null) {
            method = placement.getClass().getDeclaredMethod("isContentReady", null);
        } else {
            method = null;
        }
        if (method != null) {
            obj = method.invoke(placement, null);
        }
        Boolean bool = (Boolean) obj;
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }

    public final boolean isConnected() {
        try {
            Boolean bool = (Boolean) Class.forName("com.tapjoy.Tapjoy").getDeclaredMethod("isConnected", null).invoke(null, null);
            if (bool == null) {
                return false;
            }
            return bool.booleanValue();
        } catch (Exception unused) {
            return false;
        }
    }

    public final void loadAd(@NotNull String str) {
        Method method;
        Object placement = getPlacement(str);
        this.placementsMap.put(str, placement);
        if (placement != null) {
            method = placement.getClass().getDeclaredMethod("requestContent", null);
        } else {
            method = null;
        }
        if (method != null) {
            method.invoke(placement, null);
        }
    }

    public final void showAd(@NotNull String str) {
        Method method;
        Object obj;
        boolean z;
        Method method2;
        Object obj2 = this.placementsMap.get(str);
        if (obj2 != null) {
            method = obj2.getClass().getDeclaredMethod("isContentAvailable", null);
        } else {
            method = null;
        }
        if (method != null) {
            obj = method.invoke(obj2, null);
        } else {
            obj = null;
        }
        Boolean bool = (Boolean) obj;
        if (bool != null) {
            z = bool.booleanValue();
        } else {
            z = false;
        }
        if (!z) {
            BuildersKt__Builders_commonKt.launch$default(this.scope, null, null, new OfferwallAdapterBridge$showAd$1(this, str, null), 3, null);
        } else {
            if (obj2 != null) {
                method2 = obj2.getClass().getDeclaredMethod("showContent", null);
            } else {
                method2 = null;
            }
            if (method2 != null) {
                method2.invoke(obj2, null);
            }
        }
        this.placementsMap.remove(str);
    }
}
