package androidx.media3.common;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.media3.common.util.UnstableApi;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.List;
import java.util.Map;
/* compiled from: Proguard */
@UnstableApi
/* loaded from: classes.dex */
public final class FileTypes {
    public static final int AC3 = 0;
    public static final int AC4 = 1;
    public static final int ADTS = 2;
    public static final int AMR = 3;
    public static final int AVI = 16;
    public static final int AVIF = 21;
    public static final int BMP = 19;
    private static final String EXTENSION_AAC = ".aac";
    private static final String EXTENSION_AC3 = ".ac3";
    private static final String EXTENSION_AC4 = ".ac4";
    private static final String EXTENSION_ADTS = ".adts";
    private static final String EXTENSION_AMR = ".amr";
    private static final String EXTENSION_AVI = ".avi";
    private static final String EXTENSION_AVIF = ".avif";
    private static final String EXTENSION_BMP = ".bmp";
    private static final String EXTENSION_DIB = ".dib";
    private static final String EXTENSION_EC3 = ".ec3";
    private static final String EXTENSION_FLAC = ".flac";
    private static final String EXTENSION_FLV = ".flv";
    private static final String EXTENSION_HEIC = ".heic";
    private static final String EXTENSION_HEIF = ".heif";
    private static final String EXTENSION_JPEG = ".jpeg";
    private static final String EXTENSION_JPG = ".jpg";
    private static final String EXTENSION_M2P = ".m2p";
    private static final String EXTENSION_MID = ".mid";
    private static final String EXTENSION_MIDI = ".midi";
    private static final String EXTENSION_MP3 = ".mp3";
    private static final String EXTENSION_MP4 = ".mp4";
    private static final String EXTENSION_MPEG = ".mpeg";
    private static final String EXTENSION_MPG = ".mpg";
    private static final String EXTENSION_OPUS = ".opus";
    private static final String EXTENSION_PNG = ".png";
    private static final String EXTENSION_PREFIX_CMF = ".cmf";
    private static final String EXTENSION_PREFIX_M4 = ".m4";
    private static final String EXTENSION_PREFIX_MK = ".mk";
    private static final String EXTENSION_PREFIX_MP4 = ".mp4";
    private static final String EXTENSION_PREFIX_OG = ".og";
    private static final String EXTENSION_PREFIX_TS = ".ts";
    private static final String EXTENSION_PS = ".ps";
    private static final String EXTENSION_SMF = ".smf";
    private static final String EXTENSION_TS = ".ts";
    private static final String EXTENSION_VTT = ".vtt";
    private static final String EXTENSION_WAV = ".wav";
    private static final String EXTENSION_WAVE = ".wave";
    private static final String EXTENSION_WEBM = ".webm";
    private static final String EXTENSION_WEBP = ".webp";
    private static final String EXTENSION_WEBVTT = ".webvtt";
    public static final int FLAC = 4;
    public static final int FLV = 5;
    @VisibleForTesting
    static final String HEADER_CONTENT_TYPE = "Content-Type";
    public static final int HEIF = 20;
    public static final int JPEG = 14;
    public static final int MATROSKA = 6;
    public static final int MIDI = 15;
    public static final int MP3 = 7;
    public static final int MP4 = 8;
    public static final int OGG = 9;
    public static final int PNG = 17;
    public static final int PS = 10;
    public static final int TS = 11;
    public static final int UNKNOWN = -1;
    public static final int WAV = 12;
    public static final int WEBP = 18;
    public static final int WEBVTT = 13;

    /* compiled from: Proguard */
    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface Type {
    }

    private FileTypes() {
    }

    public static int inferFileTypeFromMimeType(@Nullable String str) {
        int i;
        char c;
        if (str == null) {
            return -1;
        }
        String normalizeMimeType = MimeTypes.normalizeMimeType(str);
        normalizeMimeType.getClass();
        switch (normalizeMimeType.hashCode()) {
            case -2123537834:
                i = 20;
                if (normalizeMimeType.equals("audio/eac3-joc")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case -1662384011:
                i = 20;
                if (normalizeMimeType.equals(MimeTypes.VIDEO_PS)) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case -1662384007:
                i = 20;
                if (normalizeMimeType.equals(MimeTypes.VIDEO_MP2T)) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case -1662095187:
                i = 20;
                if (normalizeMimeType.equals("video/webm")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case -1606874997:
                i = 20;
                if (normalizeMimeType.equals("audio/amr-wb")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case -1487656890:
                i = 20;
                if (normalizeMimeType.equals(MimeTypes.IMAGE_AVIF)) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case -1487464693:
                i = 20;
                if (normalizeMimeType.equals(MimeTypes.IMAGE_HEIC)) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case -1487464690:
                i = 20;
                if (normalizeMimeType.equals(MimeTypes.IMAGE_HEIF)) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case -1487394660:
                i = 20;
                if (normalizeMimeType.equals(MimeTypes.IMAGE_JPEG)) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            case -1487018032:
                i = 20;
                if (normalizeMimeType.equals(MimeTypes.IMAGE_WEBP)) {
                    c = '\t';
                    break;
                }
                c = 65535;
                break;
            case -1248337486:
                i = 20;
                if (normalizeMimeType.equals("application/mp4")) {
                    c = '\n';
                    break;
                }
                c = 65535;
                break;
            case -1079884372:
                i = 20;
                if (normalizeMimeType.equals(MimeTypes.VIDEO_AVI)) {
                    c = 11;
                    break;
                }
                c = 65535;
                break;
            case -1004728940:
                i = 20;
                if (normalizeMimeType.equals("text/vtt")) {
                    c = '\f';
                    break;
                }
                c = 65535;
                break;
            case -879272239:
                i = 20;
                if (normalizeMimeType.equals(MimeTypes.IMAGE_BMP)) {
                    c = '\r';
                    break;
                }
                c = 65535;
                break;
            case -879258763:
                i = 20;
                if (normalizeMimeType.equals(MimeTypes.IMAGE_PNG)) {
                    c = 14;
                    break;
                }
                c = 65535;
                break;
            case -387023398:
                i = 20;
                if (normalizeMimeType.equals(MimeTypes.AUDIO_MATROSKA)) {
                    c = 15;
                    break;
                }
                c = 65535;
                break;
            case -43467528:
                i = 20;
                if (normalizeMimeType.equals("application/webm")) {
                    c = 16;
                    break;
                }
                c = 65535;
                break;
            case 13915911:
                i = 20;
                if (normalizeMimeType.equals(MimeTypes.VIDEO_FLV)) {
                    c = 17;
                    break;
                }
                c = 65535;
                break;
            case 187078296:
                i = 20;
                if (normalizeMimeType.equals("audio/ac3")) {
                    c = 18;
                    break;
                }
                c = 65535;
                break;
            case 187078297:
                i = 20;
                if (normalizeMimeType.equals(MimeTypes.AUDIO_AC4)) {
                    c = 19;
                    break;
                }
                c = 65535;
                break;
            case 187078669:
                i = 20;
                if (normalizeMimeType.equals(MimeTypes.AUDIO_AMR)) {
                    c = 20;
                    break;
                }
                c = 65535;
                break;
            case 187090232:
                i = 20;
                if (normalizeMimeType.equals("audio/mp4")) {
                    c = 21;
                    break;
                }
                c = 65535;
                break;
            case 187091926:
                i = 20;
                if (normalizeMimeType.equals(MimeTypes.AUDIO_OGG)) {
                    c = 22;
                    break;
                }
                c = 65535;
                break;
            case 187099443:
                i = 20;
                if (normalizeMimeType.equals(MimeTypes.AUDIO_WAV)) {
                    c = 23;
                    break;
                }
                c = 65535;
                break;
            case 1331848029:
                i = 20;
                if (normalizeMimeType.equals("video/mp4")) {
                    c = 24;
                    break;
                }
                c = 65535;
                break;
            case 1503095341:
                i = 20;
                if (normalizeMimeType.equals("audio/3gpp")) {
                    c = 25;
                    break;
                }
                c = 65535;
                break;
            case 1504578661:
                i = 20;
                if (normalizeMimeType.equals("audio/eac3")) {
                    c = 26;
                    break;
                }
                c = 65535;
                break;
            case 1504619009:
                i = 20;
                if (normalizeMimeType.equals("audio/flac")) {
                    c = 27;
                    break;
                }
                c = 65535;
                break;
            case 1504824762:
                i = 20;
                if (normalizeMimeType.equals(MimeTypes.AUDIO_MIDI)) {
                    c = 28;
                    break;
                }
                c = 65535;
                break;
            case 1504831518:
                i = 20;
                if (normalizeMimeType.equals("audio/mpeg")) {
                    c = 29;
                    break;
                }
                c = 65535;
                break;
            case 1505118770:
                i = 20;
                if (normalizeMimeType.equals("audio/webm")) {
                    c = 30;
                    break;
                }
                c = 65535;
                break;
            case 2039520277:
                i = 20;
                if (normalizeMimeType.equals(MimeTypes.VIDEO_MATROSKA)) {
                    c = 31;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                i = 20;
                break;
        }
        switch (c) {
            case 0:
            case 18:
            case 26:
                return 0;
            case 1:
                return 10;
            case 2:
                return 11;
            case 3:
            case 15:
            case 16:
            case 30:
            case 31:
                return 6;
            case 4:
            case 20:
            case 25:
                return 3;
            case 5:
                return 21;
            case 6:
            case 7:
                return i;
            case '\b':
                return 14;
            case '\t':
                return 18;
            case '\n':
            case 21:
            case 24:
                return 8;
            case 11:
                return 16;
            case '\f':
                return 13;
            case '\r':
                return 19;
            case 14:
                return 17;
            case 17:
                return 5;
            case 19:
                return 1;
            case 22:
                return 9;
            case 23:
                return 12;
            case 27:
                return 4;
            case 28:
                return 15;
            case 29:
                return 7;
            default:
                return -1;
        }
    }

    public static int inferFileTypeFromResponseHeaders(Map<String, List<String>> map) {
        String str;
        List<String> list = map.get("Content-Type");
        if (list != null && !list.isEmpty()) {
            str = list.get(0);
        } else {
            str = null;
        }
        return inferFileTypeFromMimeType(str);
    }

    public static int inferFileTypeFromUri(Uri uri) {
        String lastPathSegment = uri.getLastPathSegment();
        if (lastPathSegment == null) {
            return -1;
        }
        if (!lastPathSegment.endsWith(EXTENSION_AC3) && !lastPathSegment.endsWith(EXTENSION_EC3)) {
            if (lastPathSegment.endsWith(EXTENSION_AC4)) {
                return 1;
            }
            if (!lastPathSegment.endsWith(EXTENSION_ADTS) && !lastPathSegment.endsWith(EXTENSION_AAC)) {
                if (lastPathSegment.endsWith(EXTENSION_AMR)) {
                    return 3;
                }
                if (lastPathSegment.endsWith(EXTENSION_FLAC)) {
                    return 4;
                }
                if (lastPathSegment.endsWith(EXTENSION_FLV)) {
                    return 5;
                }
                if (!lastPathSegment.endsWith(EXTENSION_MID) && !lastPathSegment.endsWith(EXTENSION_MIDI) && !lastPathSegment.endsWith(EXTENSION_SMF)) {
                    if (!lastPathSegment.startsWith(EXTENSION_PREFIX_MK, lastPathSegment.length() - 4) && !lastPathSegment.endsWith(EXTENSION_WEBM)) {
                        if (lastPathSegment.endsWith(EXTENSION_MP3)) {
                            return 7;
                        }
                        if (!lastPathSegment.endsWith(".mp4") && !lastPathSegment.startsWith(EXTENSION_PREFIX_M4, lastPathSegment.length() - 4) && !lastPathSegment.startsWith(".mp4", lastPathSegment.length() - 5) && !lastPathSegment.startsWith(EXTENSION_PREFIX_CMF, lastPathSegment.length() - 5)) {
                            if (!lastPathSegment.startsWith(EXTENSION_PREFIX_OG, lastPathSegment.length() - 4) && !lastPathSegment.endsWith(EXTENSION_OPUS)) {
                                if (!lastPathSegment.endsWith(EXTENSION_PS) && !lastPathSegment.endsWith(EXTENSION_MPEG) && !lastPathSegment.endsWith(EXTENSION_MPG) && !lastPathSegment.endsWith(EXTENSION_M2P)) {
                                    if (!lastPathSegment.endsWith(".ts") && !lastPathSegment.startsWith(".ts", lastPathSegment.length() - 4)) {
                                        if (!lastPathSegment.endsWith(EXTENSION_WAV) && !lastPathSegment.endsWith(EXTENSION_WAVE)) {
                                            if (!lastPathSegment.endsWith(EXTENSION_VTT) && !lastPathSegment.endsWith(EXTENSION_WEBVTT)) {
                                                if (!lastPathSegment.endsWith(EXTENSION_JPG) && !lastPathSegment.endsWith(EXTENSION_JPEG)) {
                                                    if (lastPathSegment.endsWith(EXTENSION_AVI)) {
                                                        return 16;
                                                    }
                                                    if (lastPathSegment.endsWith(EXTENSION_PNG)) {
                                                        return 17;
                                                    }
                                                    if (lastPathSegment.endsWith(EXTENSION_WEBP)) {
                                                        return 18;
                                                    }
                                                    if (!lastPathSegment.endsWith(EXTENSION_BMP) && !lastPathSegment.endsWith(EXTENSION_DIB)) {
                                                        if (!lastPathSegment.endsWith(EXTENSION_HEIC) && !lastPathSegment.endsWith(EXTENSION_HEIF)) {
                                                            if (!lastPathSegment.endsWith(EXTENSION_AVIF)) {
                                                                return -1;
                                                            }
                                                            return 21;
                                                        }
                                                        return 20;
                                                    }
                                                    return 19;
                                                }
                                                return 14;
                                            }
                                            return 13;
                                        }
                                        return 12;
                                    }
                                    return 11;
                                }
                                return 10;
                            }
                            return 9;
                        }
                        return 8;
                    }
                    return 6;
                }
                return 15;
            }
            return 2;
        }
        return 0;
    }
}
