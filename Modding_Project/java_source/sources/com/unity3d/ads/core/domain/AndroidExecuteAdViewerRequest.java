package com.unity3d.ads.core.domain;

import com.unity3d.ads.core.extensions.JSONArrayExtensionsKt;
import com.unity3d.services.core.network.core.HttpClient;
import com.unity3d.services.core.network.model.HttpRequest;
import com.unity3d.services.core.network.model.HttpResponse;
import com.unity3d.services.core.network.model.RequestType;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.ArraysKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ#\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eH\u0002¢\u0006\u0002\u0010\u0010J'\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u000b\u001a\u00020\f2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eH\u0096Bø\u0001\u0000¢\u0006\u0002\u0010\u0013R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0014"}, d2 = {"Lcom/unity3d/ads/core/domain/AndroidExecuteAdViewerRequest;", "Lcom/unity3d/ads/core/domain/ExecuteAdViewerRequest;", "ioDispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "httpClient", "Lcom/unity3d/services/core/network/core/HttpClient;", "getCachedAsset", "Lcom/unity3d/ads/core/domain/GetCachedAsset;", "(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/unity3d/services/core/network/core/HttpClient;Lcom/unity3d/ads/core/domain/GetCachedAsset;)V", "createRequest", "Lcom/unity3d/services/core/network/model/HttpRequest;", "type", "Lcom/unity3d/services/core/network/model/RequestType;", "parameters", "", "", "(Lcom/unity3d/services/core/network/model/RequestType;[Ljava/lang/Object;)Lcom/unity3d/services/core/network/model/HttpRequest;", "invoke", "Lcom/unity3d/services/core/network/model/HttpResponse;", "(Lcom/unity3d/services/core/network/model/RequestType;[Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes6.dex */
public final class AndroidExecuteAdViewerRequest implements ExecuteAdViewerRequest {
    @NotNull
    private final GetCachedAsset getCachedAsset;
    @NotNull
    private final HttpClient httpClient;
    @NotNull
    private final CoroutineDispatcher ioDispatcher;

    /* compiled from: Proguard */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes6.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[RequestType.values().length];
            try {
                iArr[RequestType.GET.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[RequestType.HEAD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[RequestType.POST.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public AndroidExecuteAdViewerRequest(@NotNull CoroutineDispatcher coroutineDispatcher, @NotNull HttpClient httpClient, @NotNull GetCachedAsset getCachedAsset) {
        this.ioDispatcher = coroutineDispatcher;
        this.httpClient = httpClient;
        this.getCachedAsset = getCachedAsset;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final HttpRequest createRequest(RequestType requestType, Object[] objArr) {
        boolean z;
        Map<String, List<String>> emptyMap;
        int i;
        Map<String, List<String>> emptyMap2;
        int i2;
        String str = (String) ArraysKt.getOrNull(objArr, 1);
        if (str != null && str.length() != 0) {
            z = false;
        } else {
            z = true;
        }
        if (!z) {
            int i3 = WhenMappings.$EnumSwitchMapping$0[requestType.ordinal()];
            int i4 = 30000;
            if (i3 != 1 && i3 != 2) {
                if (i3 == 3) {
                    String str2 = (String) ArraysKt.getOrNull(objArr, 2);
                    JSONArray jSONArray = (JSONArray) ArraysKt.getOrNull(objArr, 3);
                    Integer num = (Integer) ArraysKt.getOrNull(objArr, 4);
                    Integer num2 = (Integer) ArraysKt.getOrNull(objArr, 5);
                    if (jSONArray == null || (emptyMap2 = JSONArrayExtensionsKt.getHeadersMap(jSONArray)) == null) {
                        emptyMap2 = MapsKt.emptyMap();
                    }
                    Map<String, List<String>> map = emptyMap2;
                    if (num != null) {
                        i2 = num.intValue();
                    } else {
                        i2 = 30000;
                    }
                    if (num2 != null) {
                        i4 = num2.intValue();
                    }
                    return new HttpRequest(str, null, requestType, str2, map, null, null, null, null, i2, i4, 0, 0, false, null, null, 0, 129506, null);
                }
                throw new NoWhenBranchMatchedException();
            }
            JSONArray jSONArray2 = (JSONArray) ArraysKt.getOrNull(objArr, 2);
            Integer num3 = (Integer) ArraysKt.getOrNull(objArr, 3);
            Integer num4 = (Integer) ArraysKt.getOrNull(objArr, 4);
            if (jSONArray2 == null || (emptyMap = JSONArrayExtensionsKt.getHeadersMap(jSONArray2)) == null) {
                emptyMap = MapsKt.emptyMap();
            }
            Map<String, List<String>> map2 = emptyMap;
            if (num3 != null) {
                i = num3.intValue();
            } else {
                i = 30000;
            }
            if (num4 != null) {
                i4 = num4.intValue();
            }
            return new HttpRequest(str, null, requestType, null, map2, null, null, null, null, i, i4, 0, 0, false, null, null, 0, 129514, null);
        }
        throw new IllegalArgumentException("Failed requirement.");
    }

    @Override // com.unity3d.ads.core.domain.ExecuteAdViewerRequest
    @Nullable
    public Object invoke(@NotNull RequestType requestType, @NotNull Object[] objArr, @NotNull Continuation<? super HttpResponse> continuation) {
        return BuildersKt.withContext(this.ioDispatcher, new AndroidExecuteAdViewerRequest$invoke$2(objArr, this, requestType, null), continuation);
    }
}
