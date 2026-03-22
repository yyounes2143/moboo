package com.vungle.ads.internal.network.converters;

import androidx.exifinterface.media.ExifInterface;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.KType;
import kotlinx.serialization.SerializersKt;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonBuilder;
import kotlinx.serialization.json.JsonKt;
import okhttp3.ResponseBody;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 \n*\u0004\b\u0000\u0010\u00012\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0012\u0004\u0012\u0002H\u00010\u0002:\u0001\nB\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0019\u0010\u0007\u001a\u0004\u0018\u00018\u00002\b\u0010\b\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0002\u0010\tR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/vungle/ads/internal/network/converters/JsonConverter;", ExifInterface.LONGITUDE_EAST, "Lcom/vungle/ads/internal/network/converters/Converter;", "Lokhttp3/ResponseBody;", "kType", "Lkotlin/reflect/KType;", "(Lkotlin/reflect/KType;)V", "convert", "responseBody", "(Lokhttp3/ResponseBody;)Ljava/lang/Object;", "Companion", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes6.dex */
public final class JsonConverter<E> implements Converter<ResponseBody, E> {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final Json json = JsonKt.Json$default(null, new Function1<JsonBuilder, Unit>() { // from class: com.vungle.ads.internal.network.converters.JsonConverter$Companion$json$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(JsonBuilder jsonBuilder) {
            invoke2(jsonBuilder);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(@NotNull JsonBuilder jsonBuilder) {
            jsonBuilder.setIgnoreUnknownKeys(true);
            jsonBuilder.setEncodeDefaults(true);
            jsonBuilder.setExplicitNulls(false);
            jsonBuilder.setAllowStructuredMapKeys(true);
        }
    }, 1, null);
    @NotNull
    private final KType kType;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/vungle/ads/internal/network/converters/JsonConverter$Companion;", "", "()V", "json", "Lkotlinx/serialization/json/Json;", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public JsonConverter(@NotNull KType kType) {
        this.kType = kType;
    }

    @Override // com.vungle.ads.internal.network.converters.Converter
    @Nullable
    public E convert(@Nullable ResponseBody responseBody) throws IOException {
        if (responseBody != null) {
            try {
                String string = responseBody.string();
                if (string != null) {
                    E e = (E) json.decodeFromString(SerializersKt.serializer(Json.Default.getSerializersModule(), this.kType), string);
                    CloseableKt.closeFinally(responseBody, null);
                    return e;
                }
            } finally {
            }
        }
        CloseableKt.closeFinally(responseBody, null);
        return null;
    }
}
