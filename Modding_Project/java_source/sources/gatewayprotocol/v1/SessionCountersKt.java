package gatewayprotocol.v1;

import com.google.protobuf.kotlin.ProtoDslMarker;
import gatewayprotocol.v1.SessionCountersOuterClass;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0003B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, d2 = {"Lgatewayprotocol/v1/SessionCountersKt;", "", "()V", "Dsl", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes6.dex */
public final class SessionCountersKt {
    @NotNull
    public static final SessionCountersKt INSTANCE = new SessionCountersKt();

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u001b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\t\b\u0007\u0018\u0000 ,2\u00020\u0001:\u0001,B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010!\u001a\u00020\"H\u0001J\u0006\u0010#\u001a\u00020$J\u0006\u0010%\u001a\u00020$J\u0006\u0010&\u001a\u00020$J\u0006\u0010'\u001a\u00020$J\u0006\u0010(\u001a\u00020$J\u0006\u0010)\u001a\u00020$J\u0006\u0010*\u001a\u00020$J\u0006\u0010+\u001a\u00020$R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR$\u0010\f\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\r\u0010\t\"\u0004\b\u000e\u0010\u000bR$\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0010\u0010\t\"\u0004\b\u0011\u0010\u000bR$\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0013\u0010\t\"\u0004\b\u0014\u0010\u000bR$\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0016\u0010\t\"\u0004\b\u0017\u0010\u000bR$\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u0019\u0010\t\"\u0004\b\u001a\u0010\u000bR$\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001c\u0010\t\"\u0004\b\u001d\u0010\u000bR$\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e¢\u0006\f\u001a\u0004\b\u001f\u0010\t\"\u0004\b \u0010\u000b¨\u0006-"}, d2 = {"Lgatewayprotocol/v1/SessionCountersKt$Dsl;", "", "_builder", "Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;", "(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;)V", "value", "", "bannerImpressions", "getBannerImpressions", "()I", "setBannerImpressions", "(I)V", "bannerLoadRequests", "getBannerLoadRequests", "setBannerLoadRequests", "bannerRequestsAdm", "getBannerRequestsAdm", "setBannerRequestsAdm", "focusChangeCount", "getFocusChangeCount", "setFocusChangeCount", "globalAdsFocusChangeCount", "getGlobalAdsFocusChangeCount", "setGlobalAdsFocusChangeCount", "globalAdsFocusTime", "getGlobalAdsFocusTime", "setGlobalAdsFocusTime", "loadRequests", "getLoadRequests", "setLoadRequests", "loadRequestsAdm", "getLoadRequestsAdm", "setLoadRequestsAdm", "_build", "Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;", "clearBannerImpressions", "", "clearBannerLoadRequests", "clearBannerRequestsAdm", "clearFocusChangeCount", "clearGlobalAdsFocusChangeCount", "clearGlobalAdsFocusTime", "clearLoadRequests", "clearLoadRequestsAdm", "Companion", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    @ProtoDslMarker
    /* loaded from: classes6.dex */
    public static final class Dsl {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull
        private final SessionCountersOuterClass.SessionCounters.Builder _builder;

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001¨\u0006\u0007"}, d2 = {"Lgatewayprotocol/v1/SessionCountersKt$Dsl$Companion;", "", "()V", "_create", "Lgatewayprotocol/v1/SessionCountersKt$Dsl;", "builder", "Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
        /* loaded from: classes6.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @PublishedApi
            public final /* synthetic */ Dsl _create(SessionCountersOuterClass.SessionCounters.Builder builder) {
                return new Dsl(builder, null);
            }

            private Companion() {
            }
        }

        public /* synthetic */ Dsl(SessionCountersOuterClass.SessionCounters.Builder builder, DefaultConstructorMarker defaultConstructorMarker) {
            this(builder);
        }

        @PublishedApi
        public final /* synthetic */ SessionCountersOuterClass.SessionCounters _build() {
            return this._builder.build();
        }

        public final void clearBannerImpressions() {
            this._builder.clearBannerImpressions();
        }

        public final void clearBannerLoadRequests() {
            this._builder.clearBannerLoadRequests();
        }

        public final void clearBannerRequestsAdm() {
            this._builder.clearBannerRequestsAdm();
        }

        public final void clearFocusChangeCount() {
            this._builder.clearFocusChangeCount();
        }

        public final void clearGlobalAdsFocusChangeCount() {
            this._builder.clearGlobalAdsFocusChangeCount();
        }

        public final void clearGlobalAdsFocusTime() {
            this._builder.clearGlobalAdsFocusTime();
        }

        public final void clearLoadRequests() {
            this._builder.clearLoadRequests();
        }

        public final void clearLoadRequestsAdm() {
            this._builder.clearLoadRequestsAdm();
        }

        @JvmName(name = "getBannerImpressions")
        public final int getBannerImpressions() {
            return this._builder.getBannerImpressions();
        }

        @JvmName(name = "getBannerLoadRequests")
        public final int getBannerLoadRequests() {
            return this._builder.getBannerLoadRequests();
        }

        @JvmName(name = "getBannerRequestsAdm")
        public final int getBannerRequestsAdm() {
            return this._builder.getBannerRequestsAdm();
        }

        @JvmName(name = "getFocusChangeCount")
        public final int getFocusChangeCount() {
            return this._builder.getFocusChangeCount();
        }

        @JvmName(name = "getGlobalAdsFocusChangeCount")
        public final int getGlobalAdsFocusChangeCount() {
            return this._builder.getGlobalAdsFocusChangeCount();
        }

        @JvmName(name = "getGlobalAdsFocusTime")
        public final int getGlobalAdsFocusTime() {
            return this._builder.getGlobalAdsFocusTime();
        }

        @JvmName(name = "getLoadRequests")
        public final int getLoadRequests() {
            return this._builder.getLoadRequests();
        }

        @JvmName(name = "getLoadRequestsAdm")
        public final int getLoadRequestsAdm() {
            return this._builder.getLoadRequestsAdm();
        }

        @JvmName(name = "setBannerImpressions")
        public final void setBannerImpressions(int i) {
            this._builder.setBannerImpressions(i);
        }

        @JvmName(name = "setBannerLoadRequests")
        public final void setBannerLoadRequests(int i) {
            this._builder.setBannerLoadRequests(i);
        }

        @JvmName(name = "setBannerRequestsAdm")
        public final void setBannerRequestsAdm(int i) {
            this._builder.setBannerRequestsAdm(i);
        }

        @JvmName(name = "setFocusChangeCount")
        public final void setFocusChangeCount(int i) {
            this._builder.setFocusChangeCount(i);
        }

        @JvmName(name = "setGlobalAdsFocusChangeCount")
        public final void setGlobalAdsFocusChangeCount(int i) {
            this._builder.setGlobalAdsFocusChangeCount(i);
        }

        @JvmName(name = "setGlobalAdsFocusTime")
        public final void setGlobalAdsFocusTime(int i) {
            this._builder.setGlobalAdsFocusTime(i);
        }

        @JvmName(name = "setLoadRequests")
        public final void setLoadRequests(int i) {
            this._builder.setLoadRequests(i);
        }

        @JvmName(name = "setLoadRequestsAdm")
        public final void setLoadRequestsAdm(int i) {
            this._builder.setLoadRequestsAdm(i);
        }

        private Dsl(SessionCountersOuterClass.SessionCounters.Builder builder) {
            this._builder = builder;
        }
    }

    private SessionCountersKt() {
    }
}
