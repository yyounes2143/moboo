package com.facebook.appevents.ml;

import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\f\bÁ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\b\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\b\u0010\tJ\u001f\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\r\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\r\u0010\u000eJ\u001f\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fH\u0007¢\u0006\u0004\b\u0011\u0010\u0012J\u001d\u0010\u0015\u001a\u00020\u00042\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00040\u0013H\u0007¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0017\u0010\u000eJ'\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0018\u0010\u0019J-\u0010\u001d\u001a\u00020\u00042\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001a0\u00132\u0006\u0010\u001c\u001a\u00020\u000f2\u0006\u0010\n\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010!\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b!\u0010 J\u001f\u0010\"\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\"\u0010\fJ\u001f\u0010$\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010#\u001a\u00020\u000fH\u0007¢\u0006\u0004\b$\u0010%¨\u0006&"}, d2 = {"Lcom/facebook/appevents/ml/Operator;", "", "<init>", "()V", "Lcom/facebook/appevents/ml/MTensor;", "x", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/appevents/ml/MTensor;Lcom/facebook/appevents/ml/MTensor;)V", "w", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/appevents/ml/MTensor;Lcom/facebook/appevents/ml/MTensor;)Lcom/facebook/appevents/ml/MTensor;", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/appevents/ml/MTensor;)V", "", "startDim", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/appevents/ml/MTensor;I)V", "", "tensors", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "([Lcom/facebook/appevents/ml/MTensor;)Lcom/facebook/appevents/ml/MTensor;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/appevents/ml/MTensor;Lcom/facebook/appevents/ml/MTensor;Lcom/facebook/appevents/ml/MTensor;)Lcom/facebook/appevents/ml/MTensor;", "", "texts", "seqLength", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "([Ljava/lang/String;ILcom/facebook/appevents/ml/MTensor;)Lcom/facebook/appevents/ml/MTensor;", "Wwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/appevents/ml/MTensor;)Lcom/facebook/appevents/ml/MTensor;", "Wwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "poolSize", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/appevents/ml/MTensor;I)Lcom/facebook/appevents/ml/MTensor;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class Operator {
    @NotNull
    public static final Operator INSTANCE = new Operator();

    @JvmStatic
    @NotNull
    public static final MTensor Wwwwwwwwwwwwwwwwwwwwwww(@NotNull MTensor mTensor) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Operator.class)) {
            return null;
        }
        try {
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = mTensor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(0);
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = mTensor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(1);
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 = mTensor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(2);
            MTensor mTensor2 = new MTensor(new int[]{Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2});
            float[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = mTensor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            float[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = mTensor2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 > 0) {
                int i = 0;
                while (true) {
                    int i2 = i + 1;
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 > 0) {
                        int i3 = 0;
                        while (true) {
                            int i4 = i3 + 1;
                            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 > 0) {
                                int i5 = 0;
                                while (true) {
                                    int i6 = i5 + 1;
                                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3[(i5 * Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 * Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3) + (i3 * Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) + i] = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2[(i * Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 * Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4) + (i3 * Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4) + i5];
                                    if (i6 >= Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4) {
                                        break;
                                    }
                                    i5 = i6;
                                }
                            }
                            if (i4 >= Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3) {
                                break;
                            }
                            i3 = i4;
                        }
                    }
                    if (i2 >= Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
                        break;
                    }
                    i = i2;
                }
            }
            return mTensor2;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, Operator.class);
            return null;
        }
    }

    @JvmStatic
    @NotNull
    public static final MTensor Wwwwwwwwwwwwwwwwwwwwwwww(@NotNull MTensor mTensor) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Operator.class)) {
            return null;
        }
        try {
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = mTensor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(0);
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = mTensor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(1);
            MTensor mTensor2 = new MTensor(new int[]{Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2});
            float[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = mTensor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            float[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = mTensor2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 > 0) {
                int i = 0;
                while (true) {
                    int i2 = i + 1;
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 > 0) {
                        int i3 = 0;
                        while (true) {
                            int i4 = i3 + 1;
                            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3[(i3 * Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) + i] = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2[(i * Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3) + i3];
                            if (i4 >= Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3) {
                                break;
                            }
                            i3 = i4;
                        }
                    }
                    if (i2 >= Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
                        break;
                    }
                    i = i2;
                }
            }
            return mTensor2;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, Operator.class);
            return null;
        }
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwww(@NotNull MTensor mTensor) {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Operator.class)) {
            int i = 0;
            try {
                int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = mTensor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(0);
                int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = mTensor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(1);
                float[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = mTensor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 <= 0) {
                    return;
                }
                while (true) {
                    int i2 = i + 1;
                    int i3 = i * Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3;
                    int i4 = i3 + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3;
                    float f = Float.MIN_VALUE;
                    if (i3 < i4) {
                        int i5 = i3;
                        while (true) {
                            int i6 = i5 + 1;
                            float f2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2[i5];
                            if (f2 > f) {
                                f = f2;
                            }
                            if (i6 >= i4) {
                                break;
                            }
                            i5 = i6;
                        }
                    }
                    float f3 = 0.0f;
                    if (i3 < i4) {
                        int i7 = i3;
                        while (true) {
                            int i8 = i7 + 1;
                            float exp = (float) Math.exp(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2[i7] - f);
                            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2[i7] = exp;
                            f3 += exp;
                            if (i8 >= i4) {
                                break;
                            }
                            i7 = i8;
                        }
                    }
                    if (i3 < i4) {
                        while (true) {
                            int i9 = i3 + 1;
                            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2[i3] = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2[i3] / f3;
                            if (i9 >= i4) {
                                break;
                            }
                            i3 = i9;
                        }
                    }
                    if (i2 < Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
                        i = i2;
                    } else {
                        return;
                    }
                }
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, Operator.class);
            }
        }
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull MTensor mTensor) {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Operator.class)) {
            try {
                float[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = mTensor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                int length = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.length - 1;
                if (length >= 0) {
                    int i = 0;
                    while (true) {
                        int i2 = i + 1;
                        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2[i] < 0.0f) {
                            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2[i] = 0.0f;
                        }
                        if (i2 <= length) {
                            i = i2;
                        } else {
                            return;
                        }
                    }
                }
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, Operator.class);
            }
        }
    }

    @JvmStatic
    @NotNull
    public static final MTensor Wwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull MTensor mTensor, @NotNull MTensor mTensor2) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Operator.class)) {
            return null;
        }
        int i = 0;
        try {
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = mTensor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(0);
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = mTensor2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(0);
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 = mTensor2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(1);
            MTensor mTensor3 = new MTensor(new int[]{Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4});
            float[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = mTensor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            float[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = mTensor2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            float[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 = mTensor3.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 > 0) {
                int i2 = 0;
                while (true) {
                    int i3 = i2 + 1;
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 > 0) {
                        int i4 = i;
                        while (true) {
                            int i5 = i4 + 1;
                            int i6 = (i2 * Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4) + i4;
                            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4[i6] = 0.0f;
                            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 > 0) {
                                int i7 = i;
                                while (true) {
                                    int i8 = i7 + 1;
                                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4[i6] = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4[i6] + (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2[(i2 * Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3) + i7] * Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3[(i7 * Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4) + i4]);
                                    if (i8 >= Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3) {
                                        break;
                                    }
                                    i7 = i8;
                                }
                            }
                            if (i5 >= Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4) {
                                break;
                            }
                            i4 = i5;
                            i = 0;
                        }
                    }
                    if (i3 >= Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
                        break;
                    }
                    i2 = i3;
                    i = 0;
                }
            }
            return mTensor3;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, Operator.class);
            return null;
        }
    }

    @JvmStatic
    @NotNull
    public static final MTensor Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull MTensor mTensor, int i) {
        MTensor mTensor2;
        float[] fArr;
        MTensor mTensor3 = null;
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Operator.class)) {
            return null;
        }
        int i2 = 0;
        try {
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = mTensor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(0);
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = mTensor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(1);
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 = mTensor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(2);
            int i3 = (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 - i) + 1;
            MTensor mTensor4 = new MTensor(new int[]{Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, i3, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4});
            float[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = mTensor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            float[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = mTensor4.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 > 0) {
                int i4 = 0;
                while (true) {
                    int i5 = i4 + 1;
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 > 0) {
                        int i6 = i2;
                        while (true) {
                            int i7 = i6 + 1;
                            if (i3 > 0) {
                                int i8 = i2;
                                while (true) {
                                    int i9 = i8 + 1;
                                    int i10 = i8 * Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4;
                                    int i11 = (i4 * i3 * Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4) + i10 + i6;
                                    int i12 = (i4 * Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 * Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4) + i10 + i6;
                                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3[i11] = Float.MIN_VALUE;
                                    if (i > 0) {
                                        int i13 = 0;
                                        while (true) {
                                            mTensor2 = mTensor3;
                                            int i14 = i13 + 1;
                                            fArr = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                                            try {
                                                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3[i11] = Math.max(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3[i11], fArr[i12 + (i13 * Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4)]);
                                                if (i14 >= i) {
                                                    break;
                                                }
                                                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = fArr;
                                                i13 = i14;
                                                mTensor3 = mTensor2;
                                            } catch (Throwable th) {
                                                th = th;
                                                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, Operator.class);
                                                return mTensor2;
                                            }
                                        }
                                    } else {
                                        fArr = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                                        mTensor2 = mTensor3;
                                    }
                                    if (i9 >= i3) {
                                        break;
                                    }
                                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = fArr;
                                    i8 = i9;
                                    mTensor3 = mTensor2;
                                }
                            } else {
                                fArr = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                                mTensor2 = mTensor3;
                            }
                            if (i7 >= Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4) {
                                break;
                            }
                            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = fArr;
                            i6 = i7;
                            mTensor3 = mTensor2;
                            i2 = 0;
                        }
                    } else {
                        fArr = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                        mTensor2 = mTensor3;
                    }
                    if (i5 >= Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
                        break;
                    }
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = fArr;
                    i4 = i5;
                    mTensor3 = mTensor2;
                    i2 = 0;
                }
            }
            return mTensor4;
        } catch (Throwable th2) {
            th = th2;
            mTensor2 = mTensor3;
        }
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull MTensor mTensor, int i) {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Operator.class)) {
            try {
                if (i >= mTensor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                    return;
                }
                int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = mTensor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                int i2 = 1;
                if (i < Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
                    int i3 = i;
                    while (true) {
                        int i4 = i3 + 1;
                        i2 *= mTensor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i3);
                        if (i4 >= Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
                            break;
                        }
                        i3 = i4;
                    }
                }
                int[] iArr = new int[i + 1];
                if (i > 0) {
                    int i5 = 0;
                    while (true) {
                        int i6 = i5 + 1;
                        iArr[i5] = mTensor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i5);
                        if (i6 >= i) {
                            break;
                        }
                        i5 = i6;
                    }
                }
                iArr[i] = i2;
                mTensor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(iArr);
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, Operator.class);
            }
        }
    }

    @JvmStatic
    @NotNull
    public static final MTensor Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String[] strArr, int i, @NotNull MTensor mTensor) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Operator.class)) {
            return null;
        }
        try {
            int length = strArr.length;
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = mTensor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(1);
            MTensor mTensor2 = new MTensor(new int[]{length, i, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2});
            float[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = mTensor2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            float[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = mTensor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (length > 0) {
                int i2 = 0;
                while (true) {
                    int i3 = i2 + 1;
                    int[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Utils.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(strArr[i2], i);
                    if (i > 0) {
                        int i4 = 0;
                        while (true) {
                            int i5 = i4 + 1;
                            System.arraycopy(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2[i4] * Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 * i * i2) + (i4 * Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                            if (i5 >= i) {
                                break;
                            }
                            i4 = i5;
                        }
                    }
                    if (i3 >= length) {
                        break;
                    }
                    i2 = i3;
                }
            }
            return mTensor2;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, Operator.class);
            return null;
        }
    }

    @JvmStatic
    @NotNull
    public static final MTensor Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull MTensor mTensor, @NotNull MTensor mTensor2, @NotNull MTensor mTensor3) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Operator.class)) {
            return null;
        }
        try {
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = mTensor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(0);
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = mTensor3.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(0);
            MTensor Wwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwww(mTensor, mTensor2);
            float[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = mTensor3.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            float[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = Wwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 > 0) {
                int i = 0;
                while (true) {
                    int i2 = i + 1;
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 > 0) {
                        int i3 = 0;
                        while (true) {
                            int i4 = i3 + 1;
                            int i5 = (i * Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3) + i3;
                            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3[i5] = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3[i5] + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2[i3];
                            if (i4 >= Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3) {
                                break;
                            }
                            i3 = i4;
                        }
                    }
                    if (i2 >= Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
                        break;
                    }
                    i = i2;
                }
            }
            return Wwwwwwwwwwwwwwwwwwwwwwwwwww2;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, Operator.class);
            return null;
        }
    }

    @JvmStatic
    @NotNull
    public static final MTensor Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull MTensor mTensor, @NotNull MTensor mTensor2) {
        MTensor mTensor3;
        float[] fArr;
        float[] fArr2;
        MTensor mTensor4 = null;
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Operator.class)) {
            return null;
        }
        int i = 0;
        try {
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = mTensor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(0);
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = mTensor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(1);
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 = mTensor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(2);
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww5 = mTensor2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(0);
            int i2 = (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 - Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww5) + 1;
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww6 = mTensor2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(2);
            MTensor mTensor5 = new MTensor(new int[]{Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, i2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww6});
            float[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = mTensor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            float[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = mTensor5.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            float[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 = mTensor2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 > 0) {
                int i3 = 0;
                while (true) {
                    int i4 = i3 + 1;
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww6 > 0) {
                        int i5 = i;
                        while (true) {
                            int i6 = i5 + 1;
                            if (i2 > 0) {
                                int i7 = 0;
                                while (true) {
                                    mTensor3 = mTensor4;
                                    int i8 = i7 + 1;
                                    float f = 0.0f;
                                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww5 > 0) {
                                        int i9 = 0;
                                        while (true) {
                                            fArr = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                                            int i10 = i9 + 1;
                                            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 > 0) {
                                                int i11 = 0;
                                                while (true) {
                                                    fArr2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4;
                                                    int i12 = i11 + 1;
                                                    try {
                                                        f += fArr[(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 * Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 * i3) + ((i9 + i7) * Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4) + i11] * fArr2[(((i9 * Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4) + i11) * Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww6) + i5];
                                                        if (i12 >= Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4) {
                                                            break;
                                                        }
                                                        i11 = i12;
                                                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 = fArr2;
                                                    } catch (Throwable th) {
                                                        th = th;
                                                        CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, Operator.class);
                                                        return mTensor3;
                                                    }
                                                }
                                            } else {
                                                fArr2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4;
                                            }
                                            if (i10 >= Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww5) {
                                                break;
                                            }
                                            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 = fArr2;
                                            i9 = i10;
                                            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = fArr;
                                        }
                                    } else {
                                        fArr = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                                        fArr2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4;
                                    }
                                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3[(i2 * Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww6 * i3) + (i7 * Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww6) + i5] = f;
                                    if (i8 >= i2) {
                                        break;
                                    }
                                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = fArr;
                                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 = fArr2;
                                    i7 = i8;
                                    mTensor4 = mTensor3;
                                }
                            } else {
                                fArr = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                                fArr2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4;
                                mTensor3 = mTensor4;
                            }
                            if (i6 >= Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww6) {
                                break;
                            }
                            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = fArr;
                            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 = fArr2;
                            i5 = i6;
                            mTensor4 = mTensor3;
                        }
                    } else {
                        fArr = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
                        fArr2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4;
                        mTensor3 = mTensor4;
                    }
                    if (i4 >= Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
                        break;
                    }
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = fArr;
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 = fArr2;
                    i3 = i4;
                    mTensor4 = mTensor3;
                    i = 0;
                }
            }
            return mTensor5;
        } catch (Throwable th2) {
            th = th2;
            mTensor3 = null;
        }
    }

    @JvmStatic
    @NotNull
    public static final MTensor Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull MTensor[] mTensorArr) {
        int i;
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Operator.class)) {
            return null;
        }
        int i2 = 0;
        try {
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = mTensorArr[0].Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(0);
            int length = mTensorArr.length - 1;
            if (length >= 0) {
                int i3 = 0;
                i = 0;
                while (true) {
                    int i4 = i3 + 1;
                    i += mTensorArr[i3].Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(1);
                    if (i4 > length) {
                        break;
                    }
                    i3 = i4;
                }
            } else {
                i = 0;
            }
            MTensor mTensor = new MTensor(new int[]{Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, i});
            float[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = mTensor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 > 0) {
                int i5 = 0;
                while (true) {
                    int i6 = i5 + 1;
                    int i7 = i5 * i;
                    int length2 = mTensorArr.length - 1;
                    if (length2 >= 0) {
                        int i8 = i2;
                        while (true) {
                            int i9 = i8 + 1;
                            float[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = mTensorArr[i8].Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = mTensorArr[i8].Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(1);
                            System.arraycopy(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3, i5 * Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, i7, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3);
                            i7 += Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3;
                            if (i9 > length2) {
                                break;
                            }
                            i8 = i9;
                        }
                    }
                    if (i6 >= Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
                        break;
                    }
                    i5 = i6;
                    i2 = 0;
                }
            }
            return mTensor;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, Operator.class);
            return null;
        }
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull MTensor mTensor, @NotNull MTensor mTensor2) {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Operator.class)) {
            try {
                int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = mTensor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(0);
                int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = mTensor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(1);
                int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 = mTensor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(2);
                float[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = mTensor.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                float[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = mTensor2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 > 0) {
                    int i = 0;
                    while (true) {
                        int i2 = i + 1;
                        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 > 0) {
                            int i3 = 0;
                            while (true) {
                                int i4 = i3 + 1;
                                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 > 0) {
                                    int i5 = 0;
                                    while (true) {
                                        int i6 = i5 + 1;
                                        int i7 = (i * Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 * Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4) + (i3 * Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4) + i5;
                                        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2[i7] = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2[i7] + Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3[i5];
                                        if (i6 >= Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4) {
                                            break;
                                        }
                                        i5 = i6;
                                    }
                                }
                                if (i4 >= Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3) {
                                    break;
                                }
                                i3 = i4;
                            }
                        }
                        if (i2 < Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2) {
                            i = i2;
                        } else {
                            return;
                        }
                    }
                }
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, Operator.class);
            }
        }
    }
}
