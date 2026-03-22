package androidx.window.embedding;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import androidx.webkit.ProxyConfig;
import androidx.window.core.ActivityComponentInfo;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001f\u0010\u0007\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\tH\u0000¢\u0006\u0002\b\u000bJ\u001d\u0010\f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\n\u001a\u00020\tH\u0000¢\u0006\u0002\b\u000fJ\u001d\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\n\u001a\u00020\tH\u0000¢\u0006\u0002\b\u0013J\u001d\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0006H\u0000¢\u0006\u0002\b\u0018J\u0018\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u0006H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0080T¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Landroidx/window/embedding/MatcherUtils;", "", "()V", "sDebugMatchers", "", "sMatchersTag", "", "areComponentsMatching", "activityComponent", "Landroidx/window/core/ActivityComponentInfo;", "ruleComponent", "areComponentsMatching$window_release", "isActivityMatching", "activity", "Landroid/app/Activity;", "isActivityMatching$window_release", "isIntentMatching", "intent", "Landroid/content/Intent;", "isIntentMatching$window_release", "validateComponentName", "", "packageName", "className", "validateComponentName$window_release", "wildcardMatch", "name", "pattern", "window_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nMatcherUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MatcherUtils.kt\nandroidx/window/embedding/MatcherUtils\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,136:1\n1#2:137\n*E\n"})
/* loaded from: classes3.dex */
public final class MatcherUtils {
    @NotNull
    public static final MatcherUtils INSTANCE = new MatcherUtils();
    public static final boolean sDebugMatchers = false;
    @NotNull
    public static final String sMatchersTag = "SplitRuleResolution";

    private MatcherUtils() {
    }

    private final boolean wildcardMatch(String str, String str2) {
        if (!StringsKt.contains$default((CharSequence) str2, (CharSequence) ProxyConfig.MATCH_ALL_SCHEMES, false, 2, (Object) null)) {
            return false;
        }
        if (Intrinsics.areEqual(str2, ProxyConfig.MATCH_ALL_SCHEMES)) {
            return true;
        }
        if (StringsKt.indexOf$default((CharSequence) str2, ProxyConfig.MATCH_ALL_SCHEMES, 0, false, 6, (Object) null) == StringsKt.lastIndexOf$default((CharSequence) str2, ProxyConfig.MATCH_ALL_SCHEMES, 0, false, 6, (Object) null) && StringsKt.endsWith$default(str2, ProxyConfig.MATCH_ALL_SCHEMES, false, 2, (Object) null)) {
            return StringsKt.startsWith$default(str, str2.substring(0, str2.length() - 1), false, 2, (Object) null);
        }
        throw new IllegalArgumentException("Name pattern with a wildcard must only contain a single wildcard in the end");
    }

    public final boolean areComponentsMatching$window_release(@Nullable ActivityComponentInfo activityComponentInfo, @NotNull ActivityComponentInfo activityComponentInfo2) {
        boolean z;
        boolean z2;
        if (activityComponentInfo == null) {
            if (Intrinsics.areEqual(activityComponentInfo2.getPackageName(), ProxyConfig.MATCH_ALL_SCHEMES) && Intrinsics.areEqual(activityComponentInfo2.getClassName(), ProxyConfig.MATCH_ALL_SCHEMES)) {
                return true;
            }
            return false;
        } else if (!StringsKt.contains$default((CharSequence) activityComponentInfo.toString(), (CharSequence) ProxyConfig.MATCH_ALL_SCHEMES, false, 2, (Object) null)) {
            if (!Intrinsics.areEqual(activityComponentInfo.getPackageName(), activityComponentInfo2.getPackageName()) && !wildcardMatch(activityComponentInfo.getPackageName(), activityComponentInfo2.getPackageName())) {
                z = false;
            } else {
                z = true;
            }
            if (!Intrinsics.areEqual(activityComponentInfo.getClassName(), activityComponentInfo2.getClassName()) && !wildcardMatch(activityComponentInfo.getClassName(), activityComponentInfo2.getClassName())) {
                z2 = false;
            } else {
                z2 = true;
            }
            if (z && z2) {
                return true;
            }
            return false;
        } else {
            throw new IllegalArgumentException("Wildcard can only be part of the rule.");
        }
    }

    public final boolean isActivityMatching$window_release(@NotNull Activity activity, @NotNull ActivityComponentInfo activityComponentInfo) {
        if (areComponentsMatching$window_release(new ActivityComponentInfo(activity.getComponentName()), activityComponentInfo)) {
            return true;
        }
        Intent intent = activity.getIntent();
        if (intent != null) {
            return INSTANCE.isIntentMatching$window_release(intent, activityComponentInfo);
        }
        return false;
    }

    public final boolean isIntentMatching$window_release(@NotNull Intent intent, @NotNull ActivityComponentInfo activityComponentInfo) {
        ActivityComponentInfo activityComponentInfo2;
        String str;
        ComponentName component = intent.getComponent();
        if (component != null) {
            activityComponentInfo2 = new ActivityComponentInfo(component);
        } else {
            activityComponentInfo2 = null;
        }
        if (areComponentsMatching$window_release(activityComponentInfo2, activityComponentInfo)) {
            return true;
        }
        if (intent.getComponent() != null || (str = intent.getPackage()) == null) {
            return false;
        }
        if ((Intrinsics.areEqual(str, activityComponentInfo.getPackageName()) || wildcardMatch(str, activityComponentInfo.getPackageName())) && Intrinsics.areEqual(activityComponentInfo.getClassName(), ProxyConfig.MATCH_ALL_SCHEMES)) {
            return true;
        }
        return false;
    }

    public final void validateComponentName$window_release(@NotNull String str, @NotNull String str2) {
        if (str.length() > 0) {
            if (str2.length() > 0) {
                if (StringsKt.contains$default((CharSequence) str, (CharSequence) ProxyConfig.MATCH_ALL_SCHEMES, false, 2, (Object) null) && StringsKt.indexOf$default((CharSequence) str, ProxyConfig.MATCH_ALL_SCHEMES, 0, false, 6, (Object) null) != str.length() - 1) {
                    throw new IllegalArgumentException("Wildcard in package name is only allowed at the end.");
                }
                if (StringsKt.contains$default((CharSequence) str2, (CharSequence) ProxyConfig.MATCH_ALL_SCHEMES, false, 2, (Object) null) && StringsKt.indexOf$default((CharSequence) str2, ProxyConfig.MATCH_ALL_SCHEMES, 0, false, 6, (Object) null) != str2.length() - 1) {
                    throw new IllegalArgumentException("Wildcard in class name is only allowed at the end.");
                }
                return;
            }
            throw new IllegalArgumentException("Activity class name must not be empty");
        }
        throw new IllegalArgumentException("Package name must not be empty");
    }
}
