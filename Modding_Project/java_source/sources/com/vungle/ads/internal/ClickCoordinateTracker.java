package com.vungle.ads.internal;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.WindowManager;
import androidx.annotation.VisibleForTesting;
import com.vungle.ads.ServiceLocator;
import com.vungle.ads.TpatError;
import com.vungle.ads.internal.model.AdPayload;
import com.vungle.ads.internal.network.TpatRequest;
import com.vungle.ads.internal.network.TpatSender;
import com.vungle.ads.internal.protos.Sdk;
import com.vungle.ads.internal.util.ViewUtility;
import java.util.List;
import java.util.regex.Pattern;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\u0018\u0000 \u001d2\u00020\u0001:\u0004\u001c\u001d\u001e\u001fB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0017\u001a\u00020\u0018H\u0002J\u000e\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u001bR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0007\u001a\u00020\b8\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u0014\u0010\r\u001a\u00020\u000e8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0011\u001a\u00020\u000e8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0010R\u0014\u0010\u0013\u001a\u00020\u000e8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0010R\u0014\u0010\u0015\u001a\u00020\u000e8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0010¨\u0006 ²\u0006\n\u0010!\u001a\u00020\"X\u008a\u0084\u0002"}, d2 = {"Lcom/vungle/ads/internal/ClickCoordinateTracker;", "", "context", "Landroid/content/Context;", "advertisement", "Lcom/vungle/ads/internal/model/AdPayload;", "(Landroid/content/Context;Lcom/vungle/ads/internal/model/AdPayload;)V", "currentClick", "Lcom/vungle/ads/internal/ClickCoordinateTracker$ClickCoordinate;", "getCurrentClick$vungle_ads_release$annotations", "()V", "getCurrentClick$vungle_ads_release", "()Lcom/vungle/ads/internal/ClickCoordinateTracker$ClickCoordinate;", "deviceHeight", "", "getDeviceHeight", "()I", "deviceWidth", "getDeviceWidth", "requestedHeight", "getRequestedHeight", "requestedWidth", "getRequestedWidth", "sendClickCoordinates", "", "trackCoordinate", "event", "Landroid/view/MotionEvent;", "ClickCoordinate", "Companion", "Coordinate", "DeviceScreenInfo", "vungle-ads_release", "tpatSender", "Lcom/vungle/ads/internal/network/TpatSender;"}, k = 1, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes6.dex */
public final class ClickCoordinateTracker {
    @NotNull
    private static final String TAG = "ClickCoordinateTracker";
    @NotNull
    private final AdPayload advertisement;
    @NotNull
    private final Context context;
    @NotNull
    private final ClickCoordinate currentClick = new ClickCoordinate(new Coordinate(Integer.MIN_VALUE, Integer.MIN_VALUE), new Coordinate(Integer.MIN_VALUE, Integer.MIN_VALUE));
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final String MACRO_REQ_WIDTH = Pattern.quote("{{{req_width}}}");
    private static final String MACRO_REQ_HEIGHT = Pattern.quote("{{{req_height}}}");
    private static final String MACRO_WIDTH = Pattern.quote("{{{width}}}");
    private static final String MACRO_HEIGHT = Pattern.quote("{{{height}}}");
    private static final String MACRO_DOWN_X = Pattern.quote("{{{down_x}}}");
    private static final String MACRO_DOWN_Y = Pattern.quote("{{{down_y}}}");
    private static final String MACRO_UP_X = Pattern.quote("{{{up_x}}}");
    private static final String MACRO_UP_Y = Pattern.quote("{{{up_y}}}");

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0080\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\u0006\u0010\u0014\u001a\u00020\u0010J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0007\"\u0004\b\u000b\u0010\t¨\u0006\u0017"}, d2 = {"Lcom/vungle/ads/internal/ClickCoordinateTracker$ClickCoordinate;", "", "downCoordinate", "Lcom/vungle/ads/internal/ClickCoordinateTracker$Coordinate;", "upCoordinate", "(Lcom/vungle/ads/internal/ClickCoordinateTracker$Coordinate;Lcom/vungle/ads/internal/ClickCoordinateTracker$Coordinate;)V", "getDownCoordinate", "()Lcom/vungle/ads/internal/ClickCoordinateTracker$Coordinate;", "setDownCoordinate", "(Lcom/vungle/ads/internal/ClickCoordinateTracker$Coordinate;)V", "getUpCoordinate", "setUpCoordinate", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "ready", "toString", "", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class ClickCoordinate {
        @NotNull
        private Coordinate downCoordinate;
        @NotNull
        private Coordinate upCoordinate;

        public ClickCoordinate(@NotNull Coordinate coordinate, @NotNull Coordinate coordinate2) {
            this.downCoordinate = coordinate;
            this.upCoordinate = coordinate2;
        }

        public static /* synthetic */ ClickCoordinate copy$default(ClickCoordinate clickCoordinate, Coordinate coordinate, Coordinate coordinate2, int i, Object obj) {
            if ((i & 1) != 0) {
                coordinate = clickCoordinate.downCoordinate;
            }
            if ((i & 2) != 0) {
                coordinate2 = clickCoordinate.upCoordinate;
            }
            return clickCoordinate.copy(coordinate, coordinate2);
        }

        @NotNull
        public final Coordinate component1() {
            return this.downCoordinate;
        }

        @NotNull
        public final Coordinate component2() {
            return this.upCoordinate;
        }

        @NotNull
        public final ClickCoordinate copy(@NotNull Coordinate coordinate, @NotNull Coordinate coordinate2) {
            return new ClickCoordinate(coordinate, coordinate2);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ClickCoordinate)) {
                return false;
            }
            ClickCoordinate clickCoordinate = (ClickCoordinate) obj;
            if (Intrinsics.areEqual(this.downCoordinate, clickCoordinate.downCoordinate) && Intrinsics.areEqual(this.upCoordinate, clickCoordinate.upCoordinate)) {
                return true;
            }
            return false;
        }

        @NotNull
        public final Coordinate getDownCoordinate() {
            return this.downCoordinate;
        }

        @NotNull
        public final Coordinate getUpCoordinate() {
            return this.upCoordinate;
        }

        public int hashCode() {
            return (this.downCoordinate.hashCode() * 31) + this.upCoordinate.hashCode();
        }

        public final boolean ready() {
            if (this.downCoordinate.getX() != Integer.MIN_VALUE && this.downCoordinate.getY() != Integer.MIN_VALUE && this.upCoordinate.getX() != Integer.MIN_VALUE && this.upCoordinate.getY() != Integer.MIN_VALUE) {
                return true;
            }
            return false;
        }

        public final void setDownCoordinate(@NotNull Coordinate coordinate) {
            this.downCoordinate = coordinate;
        }

        public final void setUpCoordinate(@NotNull Coordinate coordinate) {
            this.upCoordinate = coordinate;
        }

        @NotNull
        public String toString() {
            return "ClickCoordinate(downCoordinate=" + this.downCoordinate + ", upCoordinate=" + this.upCoordinate + ')';
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\n\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0016\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\b\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\f\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/vungle/ads/internal/ClickCoordinateTracker$Companion;", "", "()V", "MACRO_DOWN_X", "", "kotlin.jvm.PlatformType", "MACRO_DOWN_Y", "MACRO_HEIGHT", "MACRO_REQ_HEIGHT", "MACRO_REQ_WIDTH", "MACRO_UP_X", "MACRO_UP_Y", "MACRO_WIDTH", "TAG", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0080\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000f\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/vungle/ads/internal/ClickCoordinateTracker$Coordinate;", "", "x", "", "y", "(II)V", "getX", "()I", "getY", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class Coordinate {
        private final int x;
        private final int y;

        public Coordinate(int i, int i2) {
            this.x = i;
            this.y = i2;
        }

        public static /* synthetic */ Coordinate copy$default(Coordinate coordinate, int i, int i2, int i3, Object obj) {
            if ((i3 & 1) != 0) {
                i = coordinate.x;
            }
            if ((i3 & 2) != 0) {
                i2 = coordinate.y;
            }
            return coordinate.copy(i, i2);
        }

        public final int component1() {
            return this.x;
        }

        public final int component2() {
            return this.y;
        }

        @NotNull
        public final Coordinate copy(int i, int i2) {
            return new Coordinate(i, i2);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Coordinate)) {
                return false;
            }
            Coordinate coordinate = (Coordinate) obj;
            if (this.x == coordinate.x && this.y == coordinate.y) {
                return true;
            }
            return false;
        }

        public final int getX() {
            return this.x;
        }

        public final int getY() {
            return this.y;
        }

        public int hashCode() {
            return (this.x * 31) + this.y;
        }

        @NotNull
        public String toString() {
            return "Coordinate(x=" + this.x + ", y=" + this.y + ')';
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0080\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\u0010\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0014\u001a\u00020\bHÖ\u0001J\t\u0010\u0015\u001a\u00020\u0016HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\b8F¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0011\u0010\u000b\u001a\u00020\b8F¢\u0006\u0006\u001a\u0004\b\f\u0010\nR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/vungle/ads/internal/ClickCoordinateTracker$DeviceScreenInfo;", "", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "getContext", "()Landroid/content/Context;", "deviceHeight", "", "getDeviceHeight", "()I", "deviceWidth", "getDeviceWidth", "dm", "Landroid/util/DisplayMetrics;", "component1", "copy", "equals", "", "other", "hashCode", "toString", "", "vungle-ads_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class DeviceScreenInfo {
        @NotNull
        private final Context context;
        @NotNull
        private final DisplayMetrics dm;

        public DeviceScreenInfo(@NotNull Context context) {
            this.context = context;
            DisplayMetrics displayMetrics = new DisplayMetrics();
            this.dm = displayMetrics;
            ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        }

        public static /* synthetic */ DeviceScreenInfo copy$default(DeviceScreenInfo deviceScreenInfo, Context context, int i, Object obj) {
            if ((i & 1) != 0) {
                context = deviceScreenInfo.context;
            }
            return deviceScreenInfo.copy(context);
        }

        @NotNull
        public final Context component1() {
            return this.context;
        }

        @NotNull
        public final DeviceScreenInfo copy(@NotNull Context context) {
            return new DeviceScreenInfo(context);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof DeviceScreenInfo) && Intrinsics.areEqual(this.context, ((DeviceScreenInfo) obj).context)) {
                return true;
            }
            return false;
        }

        @NotNull
        public final Context getContext() {
            return this.context;
        }

        public final int getDeviceHeight() {
            return this.dm.heightPixels;
        }

        public final int getDeviceWidth() {
            return this.dm.widthPixels;
        }

        public int hashCode() {
            return this.context.hashCode();
        }

        @NotNull
        public String toString() {
            return "DeviceScreenInfo(context=" + this.context + ')';
        }
    }

    public ClickCoordinateTracker(@NotNull Context context, @NotNull AdPayload adPayload) {
        this.context = context;
        this.advertisement = adPayload;
    }

    private final int getDeviceHeight() {
        return new DeviceScreenInfo(this.context).getDeviceHeight();
    }

    private final int getDeviceWidth() {
        return new DeviceScreenInfo(this.context).getDeviceWidth();
    }

    private final int getRequestedHeight() {
        int adHeight = this.advertisement.adHeight();
        if (adHeight == 0) {
            return getDeviceHeight();
        }
        return ViewUtility.INSTANCE.dpToPixels(this.context, adHeight);
    }

    private final int getRequestedWidth() {
        int adWidth = this.advertisement.adWidth();
        if (adWidth == 0) {
            return getDeviceWidth();
        }
        return ViewUtility.INSTANCE.dpToPixels(this.context, adWidth);
    }

    private final void sendClickCoordinates() {
        List<String> tpatUrls$default = AdPayload.getTpatUrls$default(this.advertisement, AdPayload.TPAT_CLICK_COORDINATES_URLS, null, null, 6, null);
        List list = tpatUrls$default;
        if (list != null && !list.isEmpty()) {
            int requestedWidth = getRequestedWidth();
            int requestedHeight = getRequestedHeight();
            int requestedWidth2 = getRequestedWidth();
            int requestedHeight2 = getRequestedHeight();
            ServiceLocator.Companion companion = ServiceLocator.Companion;
            final Context context = this.context;
            Lazy lazy = LazyKt.lazy(LazyThreadSafetyMode.SYNCHRONIZED, (Function0) new Function0<TpatSender>() { // from class: com.vungle.ads.internal.ClickCoordinateTracker$sendClickCoordinates$$inlined$inject$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.network.TpatSender, java.lang.Object] */
                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final TpatSender invoke() {
                    return ServiceLocator.Companion.getInstance(context).getService(TpatSender.class);
                }
            });
            for (String str : tpatUrls$default) {
                TpatSender.sendTpat$default(m286sendClickCoordinates$lambda0(lazy), new TpatRequest.Builder(new Regex(MACRO_UP_Y).replace(new Regex(MACRO_UP_X).replace(new Regex(MACRO_DOWN_Y).replace(new Regex(MACRO_DOWN_X).replace(new Regex(MACRO_HEIGHT).replace(new Regex(MACRO_WIDTH).replace(new Regex(MACRO_REQ_HEIGHT).replace(new Regex(MACRO_REQ_WIDTH).replace(str, String.valueOf(requestedWidth)), String.valueOf(requestedHeight)), String.valueOf(requestedWidth2)), String.valueOf(requestedHeight2)), String.valueOf(this.currentClick.getDownCoordinate().getX())), String.valueOf(this.currentClick.getDownCoordinate().getY())), String.valueOf(this.currentClick.getUpCoordinate().getX())), String.valueOf(this.currentClick.getUpCoordinate().getY()))).tpatKey(Constants.COORDINATE).build(), false, 2, null);
            }
            return;
        }
        new TpatError(Sdk.SDKError.Reason.EMPTY_TPAT_ERROR, "Empty urls for tpat: video.clickCoordinates").setLogEntry$vungle_ads_release(this.advertisement.getLogEntry$vungle_ads_release()).logErrorNoReturnValue$vungle_ads_release();
    }

    /* renamed from: sendClickCoordinates$lambda-0  reason: not valid java name */
    private static final TpatSender m286sendClickCoordinates$lambda0(Lazy<TpatSender> lazy) {
        return lazy.getValue();
    }

    @NotNull
    public final ClickCoordinate getCurrentClick$vungle_ads_release() {
        return this.currentClick;
    }

    public final void trackCoordinate(@NotNull MotionEvent motionEvent) {
        if (this.advertisement.isClickCoordinatesTrackingEnabled()) {
            int action = motionEvent.getAction();
            if (action != 0) {
                if (action == 1) {
                    this.currentClick.setUpCoordinate(new Coordinate((int) motionEvent.getX(), (int) motionEvent.getY()));
                    if (this.currentClick.ready()) {
                        sendClickCoordinates();
                        return;
                    }
                    return;
                }
                return;
            }
            this.currentClick.setDownCoordinate(new Coordinate((int) motionEvent.getX(), (int) motionEvent.getY()));
        }
    }

    @VisibleForTesting
    public static /* synthetic */ void getCurrentClick$vungle_ads_release$annotations() {
    }
}
