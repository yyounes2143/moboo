package com.facebook;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.VisibleForTesting;
import com.facebook.internal.FacebookRequestErrorClassification;
import com.facebook.internal.FetchedAppSettings;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.Utility;
import com.facebook.internal.qualityvalidation.ExcusesForDesignViolations;
import java.net.HttpURLConnection;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b'\n\u0002\u0018\u0002\n\u0002\b\f\b\u0007\u0018\u0000 V2\u00020\u0001:\u0003WVXB\u0083\u0001\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u0016\u0010\u0017B#\b\u0017\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u0012\u000e\u0010\u001a\u001a\n\u0018\u00010\u0018j\u0004\u0018\u0001`\u0019¢\u0006\u0004\b\u0016\u0010\u001bB%\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u001c\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0016\u0010\u001dB\u0011\b\u0012\u0012\u0006\u0010\u001f\u001a\u00020\u001e¢\u0006\u0004\b\u0016\u0010 J\u000f\u0010!\u001a\u00020\u0006H\u0016¢\u0006\u0004\b!\u0010\"J\u001f\u0010&\u001a\u00020%2\u0006\u0010#\u001a\u00020\u001e2\u0006\u0010$\u001a\u00020\u0002H\u0016¢\u0006\u0004\b&\u0010'J\u000f\u0010(\u001a\u00020\u0002H\u0016¢\u0006\u0004\b(\u0010)R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b*\u0010+\u001a\u0004\b,\u0010)R\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b-\u0010+\u001a\u0004\b.\u0010)R\u0017\u0010\u0005\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b/\u0010+\u001a\u0004\b0\u0010)R\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006¢\u0006\f\n\u0004\b1\u00102\u001a\u0004\b3\u0010\"R\u0019\u0010\t\u001a\u0004\u0018\u00010\u00068\u0006¢\u0006\f\n\u0004\b4\u00102\u001a\u0004\b5\u0010\"R\u0019\u0010\n\u001a\u0004\u0018\u00010\u00068\u0006¢\u0006\f\n\u0004\b6\u00102\u001a\u0004\b7\u0010\"R\u0019\u0010\f\u001a\u0004\u0018\u00010\u000b8\u0006¢\u0006\f\n\u0004\b8\u00109\u001a\u0004\b:\u0010;R\u0019\u0010\r\u001a\u0004\u0018\u00010\u000b8\u0006¢\u0006\f\n\u0004\b<\u00109\u001a\u0004\b=\u0010;R\u0019\u0010\u000f\u001a\u0004\u0018\u00010\u000e8\u0006¢\u0006\f\n\u0004\b>\u0010?\u001a\u0004\b@\u0010AR\u0019\u0010\u0011\u001a\u0004\u0018\u00010\u00108\u0006¢\u0006\f\n\u0004\bB\u0010C\u001a\u0004\bD\u0010ER\u0019\u0010\u001c\u001a\u0004\u0018\u00010\u00068F¢\u0006\f\n\u0004\bF\u00102\u001a\u0004\bG\u0010\"R(\u0010\u001a\u001a\u0004\u0018\u00010\u00122\b\u0010H\u001a\u0004\u0018\u00010\u00128\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\bI\u0010J\u001a\u0004\bK\u0010LR\u0017\u0010R\u001a\u00020M8\u0006¢\u0006\f\n\u0004\bN\u0010O\u001a\u0004\bP\u0010QR\u0019\u0010U\u001a\u0004\u0018\u00010\u00068\u0006¢\u0006\f\n\u0004\bS\u00102\u001a\u0004\bT\u0010\"¨\u0006Y"}, d2 = {"Lcom/facebook/FacebookRequestError;", "Landroid/os/Parcelable;", "", "requestStatusCode", "errorCode", "subErrorCode", "", "errorType", "errorMessageField", "errorUserTitle", "errorUserMessage", "Lorg/json/JSONObject;", "requestResultBody", "requestResult", "", "batchRequestResult", "Ljava/net/HttpURLConnection;", "connection", "Lcom/facebook/FacebookException;", "exceptionField", "", "errorIsTransient", "<init>", "(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;Z)V", "Ljava/lang/Exception;", "Lkotlin/Exception;", "exception", "(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V", "errorMessage", "(ILjava/lang/String;Ljava/lang/String;)V", "Landroid/os/Parcel;", "parcel", "(Landroid/os/Parcel;)V", "toString", "()Ljava/lang/String;", "out", "flags", "", "writeToParcel", "(Landroid/os/Parcel;I)V", "describeContents", "()I", "Wwwwwwwwwwwwwwwwwwwwwwwww", "I", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwww", "getErrorUserTitle", "Wwwwwwwwwwwwwwwwwwww", "getErrorUserMessage", "Wwwwwwwwwwwwwwwwwww", "Lorg/json/JSONObject;", "getRequestResultBody", "()Lorg/json/JSONObject;", "Wwwwwwwwwwwwwwwwww", "getRequestResult", "Wwwwwwwwwwwwwwwww", "Ljava/lang/Object;", "getBatchRequestResult", "()Ljava/lang/Object;", "Wwwwwwwwwwwwwwww", "Ljava/net/HttpURLConnection;", "getConnection", "()Ljava/net/HttpURLConnection;", "Wwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "<set-?>", "Wwwwwwwwwwwwww", "Lcom/facebook/FacebookException;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcom/facebook/FacebookException;", "Lcom/facebook/FacebookRequestError$Category;", "Wwwwwwwwwwwww", "Lcom/facebook/FacebookRequestError$Category;", "getCategory", "()Lcom/facebook/FacebookRequestError$Category;", "category", "Wwwwwwwwwwww", "getErrorRecoveryMessage", "errorRecoveryMessage", "Companion", "Category", "Range", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@ExcusesForDesignViolations
/* loaded from: classes3.dex */
public final class FacebookRequestError implements Parcelable {
    @Nullable

    /* renamed from: Wwwwwwwwwwww  reason: collision with root package name */
    public final String f5975Wwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwww  reason: collision with root package name */
    public final Category f5976Wwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwww  reason: collision with root package name */
    public FacebookException f5977Wwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f5978Wwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwww  reason: collision with root package name */
    public final HttpURLConnection f5979Wwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Object f5980Wwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final JSONObject f5981Wwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final JSONObject f5982Wwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f5983Wwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f5984Wwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f5985Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f5986Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f5987Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f5988Wwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull

    /* renamed from: Wwwwwwwwwww  reason: collision with root package name */
    public static final Range f5974Wwwwwwwwwww = new Range(200, 299);
    @JvmField
    @NotNull
    public static final Parcelable.Creator<FacebookRequestError> CREATOR = new Parcelable.Creator<FacebookRequestError>() { // from class: com.facebook.FacebookRequestError$Companion$CREATOR$1
        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public FacebookRequestError[] newArray(int i) {
            return new FacebookRequestError[i];
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public FacebookRequestError createFromParcel(@NotNull Parcel parcel) {
            return new FacebookRequestError(parcel, (DefaultConstructorMarker) null);
        }
    };

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/facebook/FacebookRequestError$Category;", "", "(Ljava/lang/String;I)V", "LOGIN_RECOVERABLE", "OTHER", "TRANSIENT", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public enum Category {
        LOGIN_RECOVERABLE,
        OTHER,
        TRANSIENT;

        /* renamed from: values  reason: to resolve conflict with enum method */
        public static Category[] valuesCustom() {
            Category[] valuesCustom = values();
            return (Category[]) Arrays.copyOf(valuesCustom, valuesCustom.length);
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J-\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0006\u001a\u0004\u0018\u00010\u00012\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0007¢\u0006\u0004\b\n\u0010\u000bR\u001a\u0010\r\u001a\u00020\f8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0014\u001a\u00020\u00118G¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0016\u001a\u00020\u00158\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0014\u0010\u0018\u001a\u00020\u00158\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0018\u0010\u0017R\u001a\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\t0\u00198\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0014\u0010\u001c\u001a\u00020\u00158\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001c\u0010\u0017R\u0014\u0010\u001d\u001a\u00020\u00158\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001d\u0010\u0017R\u0014\u0010\u001e\u001a\u00020\u00158\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001e\u0010\u0017R\u0014\u0010\u001f\u001a\u00020\u00158\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001f\u0010\u0017R\u0014\u0010 \u001a\u00020\u00158\u0002X\u0082T¢\u0006\u0006\n\u0004\b \u0010\u0017R\u0014\u0010!\u001a\u00020\u00158\u0002X\u0082T¢\u0006\u0006\n\u0004\b!\u0010\u0017R\u0014\u0010\"\u001a\u00020\u00158\u0002X\u0082T¢\u0006\u0006\n\u0004\b\"\u0010\u0017R\u0014\u0010#\u001a\u00020\u00158\u0002X\u0082T¢\u0006\u0006\n\u0004\b#\u0010\u0017R\u0014\u0010$\u001a\u00020\u00158\u0002X\u0082T¢\u0006\u0006\n\u0004\b$\u0010\u0017R\u0014\u0010%\u001a\u00020\u00158\u0002X\u0082T¢\u0006\u0006\n\u0004\b%\u0010\u0017R\u0014\u0010&\u001a\u00020\u00158\u0002X\u0082T¢\u0006\u0006\n\u0004\b&\u0010\u0017R\u0014\u0010(\u001a\u00020'8\u0006X\u0086T¢\u0006\u0006\n\u0004\b(\u0010)R\u0014\u0010*\u001a\u00020'8\u0006X\u0086T¢\u0006\u0006\n\u0004\b*\u0010)¨\u0006+"}, d2 = {"Lcom/facebook/FacebookRequestError$Companion;", "", "<init>", "()V", "Lorg/json/JSONObject;", "singleResult", "batchResult", "Ljava/net/HttpURLConnection;", "connection", "Lcom/facebook/FacebookRequestError;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;)Lcom/facebook/FacebookRequestError;", "Lcom/facebook/FacebookRequestError$Range;", "HTTP_RANGE_SUCCESS", "Lcom/facebook/FacebookRequestError$Range;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcom/facebook/FacebookRequestError$Range;", "Lcom/facebook/internal/FacebookRequestErrorClassification;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Lcom/facebook/internal/FacebookRequestErrorClassification;", "errorClassification", "", "BODY_KEY", "Ljava/lang/String;", "CODE_KEY", "Landroid/os/Parcelable$Creator;", "CREATOR", "Landroid/os/Parcelable$Creator;", "ERROR_CODE_FIELD_KEY", "ERROR_CODE_KEY", "ERROR_IS_TRANSIENT_KEY", "ERROR_KEY", "ERROR_MESSAGE_FIELD_KEY", "ERROR_MSG_KEY", "ERROR_REASON_KEY", "ERROR_SUB_CODE_KEY", "ERROR_TYPE_FIELD_KEY", "ERROR_USER_MSG_KEY", "ERROR_USER_TITLE_KEY", "", "INVALID_ERROR_CODE", "I", "INVALID_HTTP_STATUS_CODE", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Range Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return FacebookRequestError.f5974Wwwwwwwwwww;
        }

        @JvmStatic
        @NotNull
        public final synchronized FacebookRequestErrorClassification Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            FetchedAppSettingsManager fetchedAppSettingsManager = FetchedAppSettingsManager.INSTANCE;
            FetchedAppSettings Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = FetchedAppSettingsManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(FacebookSdk.Wwwwwwwwwwwwwwwwwwwwww());
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                return FacebookRequestErrorClassification.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }

        @JvmStatic
        @Nullable
        public final FacebookRequestError Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull JSONObject jSONObject, @Nullable Object obj, @Nullable HttpURLConnection httpURLConnection) {
            String str;
            JSONObject jSONObject2;
            String optString;
            int optInt;
            String str2;
            Object obj2;
            boolean z;
            String str3;
            String str4;
            String optString2;
            int optInt2;
            String optString3;
            try {
                if (jSONObject.has("code")) {
                    int i = jSONObject.getInt("code");
                    Object Kkkkkkkkkkkkkkkkk2 = Utility.Kkkkkkkkkkkkkkkkk(jSONObject, "body", "FACEBOOK_NON_JSON_RESULT");
                    if (Kkkkkkkkkkkkkkkkk2 == null || !(Kkkkkkkkkkkkkkkkk2 instanceof JSONObject)) {
                        str = "body";
                    } else {
                        boolean z2 = true;
                        boolean z3 = false;
                        int i2 = -1;
                        if (((JSONObject) Kkkkkkkkkkkkkkkkk2).has("error")) {
                            JSONObject jSONObject3 = (JSONObject) Utility.Kkkkkkkkkkkkkkkkk((JSONObject) Kkkkkkkkkkkkkkkkk2, "error", null);
                            if (jSONObject3 == null) {
                                optString2 = null;
                            } else {
                                optString2 = jSONObject3.optString("type", null);
                            }
                            if (jSONObject3 == null) {
                                optString = null;
                            } else {
                                optString = jSONObject3.optString("message", null);
                            }
                            if (jSONObject3 == null) {
                                optInt2 = -1;
                            } else {
                                optInt2 = jSONObject3.optInt("code", -1);
                            }
                            if (jSONObject3 != null) {
                                i2 = jSONObject3.optInt("error_subcode", -1);
                            }
                            if (jSONObject3 == null) {
                                str4 = null;
                            } else {
                                str4 = jSONObject3.optString("error_user_msg", null);
                            }
                            if (jSONObject3 == null) {
                                optString3 = null;
                            } else {
                                optString3 = jSONObject3.optString("error_user_title", null);
                            }
                            if (jSONObject3 != null) {
                                z3 = jSONObject3.optBoolean("is_transient", false);
                            }
                            str = "body";
                            optInt = i2;
                            i2 = optInt2;
                            str2 = optString2;
                            obj2 = Kkkkkkkkkkkkkkkkk2;
                            str3 = optString3;
                            z = z3;
                        } else {
                            if (!((JSONObject) Kkkkkkkkkkkkkkkkk2).has("error_code") && !((JSONObject) Kkkkkkkkkkkkkkkkk2).has("error_msg") && !((JSONObject) Kkkkkkkkkkkkkkkkk2).has("error_reason")) {
                                str = "body";
                                obj2 = Kkkkkkkkkkkkkkkkk2;
                                z2 = false;
                                z = false;
                                optInt = -1;
                                str2 = null;
                                str3 = null;
                                optString = null;
                                str4 = null;
                            }
                            String optString4 = ((JSONObject) Kkkkkkkkkkkkkkkkk2).optString("error_reason", null);
                            optString = ((JSONObject) Kkkkkkkkkkkkkkkkk2).optString("error_msg", null);
                            i2 = ((JSONObject) Kkkkkkkkkkkkkkkkk2).optInt("error_code", -1);
                            str = "body";
                            optInt = ((JSONObject) Kkkkkkkkkkkkkkkkk2).optInt("error_subcode", -1);
                            str2 = optString4;
                            obj2 = Kkkkkkkkkkkkkkkkk2;
                            z = false;
                            str3 = null;
                            str4 = null;
                        }
                        if (z2) {
                            return new FacebookRequestError(i, i2, optInt, str2, optString, str3, str4, (JSONObject) obj2, jSONObject, obj, httpURLConnection, null, z, null);
                        }
                    }
                    if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i)) {
                        if (jSONObject.has(str)) {
                            jSONObject2 = (JSONObject) Utility.Kkkkkkkkkkkkkkkkk(jSONObject, str, "FACEBOOK_NON_JSON_RESULT");
                        } else {
                            jSONObject2 = null;
                        }
                        return new FacebookRequestError(i, -1, -1, null, null, null, null, jSONObject2, jSONObject, obj, httpURLConnection, null, false, null);
                    }
                }
            } catch (JSONException unused) {
            }
            return null;
        }

        public Companion() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0019\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0018\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0002H\u0086\u0002¢\u0006\u0004\b\t\u0010\nR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\u000bR\u0014\u0010\u0004\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\u000b¨\u0006\r"}, d2 = {"Lcom/facebook/FacebookRequestError$Range;", "", "", "start", "end", "<init>", "(II)V", "value", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(I)Z", "I", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Range {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f5989Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f5990Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public Range(int i, int i2) {
            this.f5990Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
            this.f5989Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i2;
        }

        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
            int i2 = this.f5990Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (i > this.f5989Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww || i2 > i) {
                return false;
            }
            return true;
        }
    }

    public /* synthetic */ FacebookRequestError(int i, int i2, int i3, String str, String str2, String str3, String str4, JSONObject jSONObject, JSONObject jSONObject2, Object obj, HttpURLConnection httpURLConnection, FacebookException facebookException, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, i2, i3, str, str2, str3, str4, jSONObject, jSONObject2, obj, httpURLConnection, facebookException, z);
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f5986Wwwwwwwwwwwwwwwwwwwwwww;
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f5988Wwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final FacebookException Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f5977Wwwwwwwwwwwwww;
    }

    @Nullable
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f5985Wwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        String str = this.f5978Wwwwwwwwwwwwwww;
        if (str == null) {
            FacebookException facebookException = this.f5977Wwwwwwwwwwwwww;
            if (facebookException == null) {
                return null;
            }
            return facebookException.getLocalizedMessage();
        }
        return str;
    }

    public final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f5987Wwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @NotNull
    public String toString() {
        return "{HttpStatus: " + this.f5988Wwwwwwwwwwwwwwwwwwwwwwwww + ", errorCode: " + this.f5987Wwwwwwwwwwwwwwwwwwwwwwww + ", subErrorCode: " + this.f5986Wwwwwwwwwwwwwwwwwwwwwww + ", errorType: " + this.f5985Wwwwwwwwwwwwwwwwwwwwww + ", errorMessage: " + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() + "}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@NotNull Parcel parcel, int i) {
        parcel.writeInt(this.f5988Wwwwwwwwwwwwwwwwwwwwwwwww);
        parcel.writeInt(this.f5987Wwwwwwwwwwwwwwwwwwwwwwww);
        parcel.writeInt(this.f5986Wwwwwwwwwwwwwwwwwwwwwww);
        parcel.writeString(this.f5985Wwwwwwwwwwwwwwwwwwwwww);
        parcel.writeString(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        parcel.writeString(this.f5984Wwwwwwwwwwwwwwwwwwwww);
        parcel.writeString(this.f5983Wwwwwwwwwwwwwwwwwwww);
    }

    public /* synthetic */ FacebookRequestError(Parcel parcel, DefaultConstructorMarker defaultConstructorMarker) {
        this(parcel);
    }

    public FacebookRequestError(int i, int i2, int i3, String str, String str2, String str3, String str4, JSONObject jSONObject, JSONObject jSONObject2, Object obj, HttpURLConnection httpURLConnection, FacebookException facebookException, boolean z) {
        Category Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        this.f5988Wwwwwwwwwwwwwwwwwwwwwwwww = i;
        this.f5987Wwwwwwwwwwwwwwwwwwwwwwww = i2;
        this.f5986Wwwwwwwwwwwwwwwwwwwwwww = i3;
        this.f5985Wwwwwwwwwwwwwwwwwwwwww = str;
        this.f5984Wwwwwwwwwwwwwwwwwwwww = str3;
        this.f5983Wwwwwwwwwwwwwwwwwwww = str4;
        this.f5982Wwwwwwwwwwwwwwwwwww = jSONObject;
        this.f5981Wwwwwwwwwwwwwwwwww = jSONObject2;
        this.f5980Wwwwwwwwwwwwwwwww = obj;
        this.f5979Wwwwwwwwwwwwwwww = httpURLConnection;
        this.f5978Wwwwwwwwwwwwwww = str2;
        if (facebookException != null) {
            this.f5977Wwwwwwwwwwwwww = facebookException;
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Category.OTHER;
        } else {
            this.f5977Wwwwwwwwwwwwww = new FacebookServiceException(this, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i2, i3, z);
        }
        this.f5976Wwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        this.f5975Wwwwwwwwwwww = Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
    }

    @VisibleForTesting(otherwise = 4)
    public FacebookRequestError(@Nullable HttpURLConnection httpURLConnection, @Nullable Exception exc) {
        this(-1, -1, -1, null, null, null, null, null, null, null, httpURLConnection, exc instanceof FacebookException ? (FacebookException) exc : new FacebookException(exc), false);
    }

    public FacebookRequestError(int i, @Nullable String str, @Nullable String str2) {
        this(-1, i, -1, str, str2, null, null, null, null, null, null, null, false);
    }

    public FacebookRequestError(Parcel parcel) {
        this(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), null, null, null, null, null, false);
    }
}
