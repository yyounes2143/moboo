package okio.internal;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.google.common.base.Ascii;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.SourceDebugExtension;
import okio.Buffer;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\f\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\u0004\n\u0002\u0010\u0019\n\u0002\b\b\u001a+\u0010\u0007\u001a\u00020\u0006*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0003H\u0000¢\u0006\u0004\b\u0007\u0010\b\u001a\u0017\u0010\u000b\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\u000b\u0010\f\u001a\u001f\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u0010\u0010\u0011\" \u0010\u0019\u001a\u00020\u00128\u0000X\u0081\u0004¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u0012\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u001a"}, d2 = {"Lokio/ByteString;", "Lokio/Buffer;", "buffer", "", TypedValues.CycleType.S_WAVE_OFFSET, "byteCount", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lokio/ByteString;Lokio/Buffer;II)V", "", "c", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(C)I", "", CmcdData.Factory.STREAMING_FORMAT_SS, "codePointCount", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "([BI)I", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "[C", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()[C", "getHEX_DIGIT_CHARS$annotations", "()V", "HEX_DIGIT_CHARS", "okio"}, k = 2, mv = {1, 8, 0}, xi = 48)
@JvmName(name = "-ByteString")
@SourceDebugExtension({"SMAP\nByteString.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ByteString.kt\nokio/internal/-ByteString\n+ 2 Util.kt\nokio/-SegmentedByteString\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Utf8.kt\nokio/Utf8\n*L\n1#1,363:1\n131#1,2:369\n133#1,9:372\n68#2:364\n74#2:365\n74#2:367\n74#2:368\n68#2:396\n74#2:408\n1#3:366\n1#3:371\n212#4,7:381\n122#4:388\n219#4,5:389\n122#4:394\n226#4:395\n228#4:397\n397#4,2:398\n122#4:400\n400#4,6:401\n127#4:407\n406#4:409\n122#4:410\n407#4,13:411\n122#4:424\n422#4:425\n122#4:426\n425#4:427\n230#4,3:428\n440#4,3:431\n122#4:434\n443#4:435\n127#4:436\n446#4,10:437\n127#4:447\n456#4:448\n122#4:449\n457#4,4:450\n127#4:454\n461#4:455\n122#4:456\n462#4,14:457\n122#4:471\n477#4,2:472\n122#4:474\n481#4:475\n122#4:476\n484#4:477\n234#4,3:478\n500#4,3:481\n122#4:484\n503#4:485\n127#4:486\n506#4,2:487\n127#4:489\n510#4,10:490\n127#4:500\n520#4:501\n122#4:502\n521#4,4:503\n127#4:507\n525#4:508\n122#4:509\n526#4,4:510\n127#4:514\n530#4:515\n122#4:516\n531#4,15:517\n122#4:532\n547#4,2:533\n122#4:535\n550#4,2:536\n122#4:538\n554#4:539\n122#4:540\n557#4:541\n241#4:542\n122#4:543\n242#4,5:544\n*S KotlinDebug\n*F\n+ 1 ByteString.kt\nokio/internal/-ByteString\n*L\n329#1:369,2\n329#1:372,9\n67#1:364\n68#1:365\n258#1:367\n259#1:368\n348#1:396\n348#1:408\n329#1:371\n348#1:381,7\n353#1:388\n348#1:389,5\n353#1:394\n348#1:395\n348#1:397\n348#1:398,2\n353#1:400\n348#1:401,6\n348#1:407\n348#1:409\n353#1:410\n348#1:411,13\n353#1:424\n348#1:425\n353#1:426\n348#1:427\n348#1:428,3\n348#1:431,3\n353#1:434\n348#1:435\n348#1:436\n348#1:437,10\n348#1:447\n348#1:448\n353#1:449\n348#1:450,4\n348#1:454\n348#1:455\n353#1:456\n348#1:457,14\n353#1:471\n348#1:472,2\n353#1:474\n348#1:475\n353#1:476\n348#1:477\n348#1:478,3\n348#1:481,3\n353#1:484\n348#1:485\n348#1:486\n348#1:487,2\n348#1:489\n348#1:490,10\n348#1:500\n348#1:501\n353#1:502\n348#1:503,4\n348#1:507\n348#1:508\n353#1:509\n348#1:510,4\n348#1:514\n348#1:515\n353#1:516\n348#1:517,15\n353#1:532\n348#1:533,2\n353#1:535\n348#1:536,2\n353#1:538\n348#1:539\n353#1:540\n348#1:541\n348#1:542\n353#1:543\n348#1:544,5\n*E\n"})
/* renamed from: okio.internal.-ByteString */
/* loaded from: classes7.dex */
public final class ByteString {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public static final char[] f13262Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    @NotNull
    public static final char[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return f13262Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public static final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(char c) {
        if ('0' <= c && c < ':') {
            return c - '0';
        }
        if ('a' <= c && c < 'g') {
            return c - 'W';
        }
        if ('A' <= c && c < 'G') {
            return c - '7';
        }
        throw new IllegalArgumentException("Unexpected hex digit: " + c);
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull okio.ByteString byteString, @NotNull Buffer buffer, int i, int i2) {
        buffer.write(byteString.getData$okio(), i, i2);
    }

    public static final int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(byte[] bArr, int i) {
        int i2;
        byte b;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8 = 1;
        int length = bArr.length;
        int i9 = 0;
        int i10 = 0;
        int i11 = 0;
        loop0: while (true) {
            if (i9 >= length) {
                break;
            }
            byte b2 = bArr[i9];
            if (b2 >= 0) {
                int i12 = i11 + 1;
                if (i11 == i) {
                    break;
                } else if ((b2 == 10 || b2 == 13 || ((b2 < 0 || b2 >= 32) && (Byte.MAX_VALUE > b2 || b2 >= 160))) && b2 != 65533) {
                    if (b2 < 65536) {
                        i2 = i8;
                    } else {
                        i2 = 2;
                    }
                    i10 += i2;
                    i9 += i8;
                    while (true) {
                        i11 = i12;
                        if (i9 < length && (b = bArr[i9]) >= 0) {
                            i9 += i8;
                            i12 = i11 + 1;
                            if (i11 == i) {
                                return i10;
                            }
                            if ((b == 10 || b == 13 || ((b < 0 || b >= 32) && (Byte.MAX_VALUE > b || b >= 160))) && b != 65533) {
                                if (b < 65536) {
                                    i3 = i8;
                                } else {
                                    i3 = 2;
                                }
                                i10 += i3;
                            }
                        }
                    }
                }
            } else {
                int i13 = i8;
                if ((b2 >> 5) == -2) {
                    int i14 = i9 + 1;
                    if (length <= i14) {
                        if (i11 == i) {
                            break;
                        }
                        return -1;
                    }
                    byte b3 = bArr[i14];
                    if ((b3 & 192) == 128) {
                        int i15 = (b3 ^ 3968) ^ (b2 << 6);
                        if (i15 < 128) {
                            if (i11 == i) {
                                break;
                            }
                            return -1;
                        }
                        i4 = i11 + 1;
                        if (i11 == i) {
                            break;
                        } else if ((i15 == 10 || i15 == 13 || ((i15 < 0 || i15 >= 32) && (127 > i15 || i15 >= 160))) && i15 != 65533) {
                            if (i15 < 65536) {
                                i7 = i13;
                            } else {
                                i7 = 2;
                            }
                            i10 += i7;
                            Unit unit = Unit.INSTANCE;
                            i9 += 2;
                            i11 = i4;
                            i8 = i13;
                        }
                    } else if (i11 == i) {
                        break;
                    } else {
                        return -1;
                    }
                } else if ((b2 >> 4) == -2) {
                    int i16 = i9 + 2;
                    if (length <= i16) {
                        if (i11 == i) {
                            break;
                        }
                        return -1;
                    }
                    byte b4 = bArr[i9 + 1];
                    if ((b4 & 192) == 128) {
                        byte b5 = bArr[i16];
                        if ((b5 & 192) == 128) {
                            int i17 = ((b5 ^ (-123008)) ^ (b4 << 6)) ^ (b2 << Ascii.FF);
                            if (i17 < 2048) {
                                if (i11 == i) {
                                    break;
                                }
                                return -1;
                            } else if (55296 <= i17 && i17 < 57344) {
                                if (i11 == i) {
                                    break;
                                }
                                return -1;
                            } else {
                                i4 = i11 + 1;
                                if (i11 == i) {
                                    break;
                                } else if ((i17 == 10 || i17 == 13 || ((i17 < 0 || i17 >= 32) && (127 > i17 || i17 >= 160))) && i17 != 65533) {
                                    if (i17 < 65536) {
                                        i6 = i13;
                                    } else {
                                        i6 = 2;
                                    }
                                    i10 += i6;
                                    Unit unit2 = Unit.INSTANCE;
                                    i9 += 3;
                                    i11 = i4;
                                    i8 = i13;
                                }
                            }
                        } else if (i11 == i) {
                            break;
                        } else {
                            return -1;
                        }
                    } else if (i11 == i) {
                        break;
                    } else {
                        return -1;
                    }
                } else if ((b2 >> 3) == -2) {
                    int i18 = i9 + 3;
                    if (length <= i18) {
                        if (i11 == i) {
                            break;
                        }
                        return -1;
                    }
                    byte b6 = bArr[i9 + 1];
                    if ((b6 & 192) == 128) {
                        byte b7 = bArr[i9 + 2];
                        if ((b7 & 192) == 128) {
                            byte b8 = bArr[i18];
                            if ((b8 & 192) == 128) {
                                int i19 = (((b8 ^ 3678080) ^ (b7 << 6)) ^ (b6 << Ascii.FF)) ^ (b2 << Ascii.DC2);
                                if (i19 > 1114111) {
                                    if (i11 == i) {
                                        break;
                                    }
                                    return -1;
                                } else if (55296 <= i19 && i19 < 57344) {
                                    if (i11 == i) {
                                        break;
                                    }
                                    return -1;
                                } else if (i19 < 65536) {
                                    if (i11 == i) {
                                        break;
                                    }
                                    return -1;
                                } else {
                                    i4 = i11 + 1;
                                    if (i11 == i) {
                                        break;
                                    } else if ((i19 == 10 || i19 == 13 || ((i19 < 0 || i19 >= 32) && (127 > i19 || i19 >= 160))) && i19 != 65533) {
                                        if (i19 < 65536) {
                                            i5 = i13;
                                        } else {
                                            i5 = 2;
                                        }
                                        i10 += i5;
                                        Unit unit3 = Unit.INSTANCE;
                                        i9 += 4;
                                        i11 = i4;
                                        i8 = i13;
                                    }
                                }
                            } else if (i11 == i) {
                                break;
                            } else {
                                return -1;
                            }
                        } else if (i11 == i) {
                            break;
                        } else {
                            return -1;
                        }
                    } else if (i11 == i) {
                        break;
                    } else {
                        return -1;
                    }
                } else if (i11 == i) {
                    break;
                } else {
                    return -1;
                }
            }
        }
        return i10;
    }
}
