package com.facebook.appevents.codeless.internal;

import android.text.method.PasswordTransformationMethod;
import android.util.Patterns;
import android.view.View;
import android.widget.TextView;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.mbridge.msdk.MBridgeConstans;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.text.CharsKt;
import kotlin.text.Regex;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\n\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\tH\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\f\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\tH\u0002¢\u0006\u0004\b\f\u0010\u000bJ\u0017\u0010\r\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\tH\u0002¢\u0006\u0004\b\r\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\tH\u0002¢\u0006\u0004\b\u000e\u0010\u000bJ\u0017\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\tH\u0002¢\u0006\u0004\b\u000f\u0010\u000bJ\u0017\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\tH\u0002¢\u0006\u0004\b\u0010\u0010\u000b¨\u0006\u0011"}, d2 = {"Lcom/facebook/appevents/codeless/internal/SensitiveUserDataUtils;", "", "<init>", "()V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/view/View;)Z", "Landroid/widget/TextView;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/widget/TextView;)Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class SensitiveUserDataUtils {
    @NotNull
    public static final SensitiveUserDataUtils INSTANCE = new SensitiveUserDataUtils();

    @JvmStatic
    public static final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable View view) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(SensitiveUserDataUtils.class)) {
            return false;
        }
        try {
            if (!(view instanceof TextView)) {
                return false;
            }
            SensitiveUserDataUtils sensitiveUserDataUtils = INSTANCE;
            if (!sensitiveUserDataUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((TextView) view) && !sensitiveUserDataUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((TextView) view) && !sensitiveUserDataUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((TextView) view) && !sensitiveUserDataUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww((TextView) view) && !sensitiveUserDataUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww((TextView) view)) {
                if (!sensitiveUserDataUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((TextView) view)) {
                    return false;
                }
                return true;
            }
            return true;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, SensitiveUserDataUtils.class);
            return false;
        }
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(TextView textView) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return false;
        }
        try {
            if (textView.getInputType() != 112) {
                return false;
            }
            return true;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return false;
        }
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(TextView textView) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return false;
        }
        try {
            if (textView.getInputType() != 3) {
                return false;
            }
            return true;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return false;
        }
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(TextView textView) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return false;
        }
        try {
            if (textView.getInputType() != 96) {
                return false;
            }
            return true;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return false;
        }
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(TextView textView) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return false;
        }
        try {
            if (textView.getInputType() == 128) {
                return true;
            }
            return textView.getTransformationMethod() instanceof PasswordTransformationMethod;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return false;
        }
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(TextView textView) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return false;
        }
        try {
            if (textView.getInputType() == 32) {
                return true;
            }
            String Wwwwwwwwwwwwwwwwwwwwwwww2 = ViewHierarchy.Wwwwwwwwwwwwwwwwwwwwwwww(textView);
            if (Wwwwwwwwwwwwwwwwwwwwwwww2 != null && Wwwwwwwwwwwwwwwwwwwwwwww2.length() != 0) {
                return Patterns.EMAIL_ADDRESS.matcher(Wwwwwwwwwwwwwwwwwwwwwwww2).matches();
            }
            return false;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return false;
        }
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(TextView textView) {
        int i;
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return false;
        }
        try {
            String replace = new Regex("\\s").replace(ViewHierarchy.Wwwwwwwwwwwwwwwwwwwwwwww(textView), "");
            int length = replace.length();
            if (length >= 12 && length <= 19) {
                int i2 = length - 1;
                if (i2 >= 0) {
                    boolean z = false;
                    i = 0;
                    while (true) {
                        int i3 = i2 - 1;
                        char charAt = replace.charAt(i2);
                        if (!Character.isDigit(charAt)) {
                            return false;
                        }
                        int digitToInt = CharsKt.digitToInt(charAt);
                        if (z && (digitToInt = digitToInt * 2) > 9) {
                            digitToInt = (digitToInt % 10) + 1;
                        }
                        i += digitToInt;
                        z = !z;
                        if (i3 < 0) {
                            break;
                        }
                        i2 = i3;
                    }
                } else {
                    i = 0;
                }
                if (i % 10 == 0) {
                    return true;
                }
            }
            return false;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return false;
        }
    }
}
