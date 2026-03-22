package com.mbridge.msdk.foundation.tools;

import android.text.TextUtils;
import com.google.common.base.Ascii;
import java.util.HashMap;
import java.util.Map;
import kotlin.io.encoding.Base64;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class i0 {

    /* renamed from: a  reason: collision with root package name */
    private static Map<Character, Character> f9104a;
    private static Map<Character, Character> b;
    private static byte[] c = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, -1, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, Base64.padSymbol, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, Ascii.VT, Ascii.FF, Ascii.CR, Ascii.SO, Ascii.SI, Ascii.DLE, 17, Ascii.DC2, 19, Ascii.DC4, Ascii.NAK, Ascii.SYN, Ascii.ETB, Ascii.CAN, Ascii.EM, -1, -1, -1, -1, -1, -1, Ascii.SUB, Ascii.ESC, Ascii.FS, Ascii.GS, Ascii.RS, Ascii.US, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1};
    private static char[] d = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', AbstractJsonLexerKt.UNICODE_ESC, 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', '/'};

    static {
        HashMap hashMap = new HashMap();
        f9104a = hashMap;
        hashMap.put('v', 'A');
        f9104a.put('S', 'B');
        f9104a.put('o', 'C');
        f9104a.put('a', 'D');
        f9104a.put('j', 'E');
        f9104a.put('c', 'F');
        f9104a.put('7', 'G');
        f9104a.put('d', 'H');
        f9104a.put('R', 'I');
        f9104a.put('z', 'J');
        f9104a.put('p', 'K');
        f9104a.put('W', 'L');
        f9104a.put('i', 'M');
        f9104a.put('f', 'N');
        f9104a.put('G', 'O');
        f9104a.put('y', 'P');
        f9104a.put('N', 'Q');
        f9104a.put('x', 'R');
        f9104a.put('Z', 'S');
        f9104a.put('n', 'T');
        f9104a.put('V', 'U');
        f9104a.put('5', 'V');
        f9104a.put('k', 'W');
        f9104a.put('+', 'X');
        f9104a.put('D', 'Y');
        f9104a.put('H', 'Z');
        f9104a.put('L', 'a');
        f9104a.put('Y', 'b');
        f9104a.put('h', 'c');
        f9104a.put('J', 'd');
        f9104a.put('4', 'e');
        f9104a.put('6', 'f');
        f9104a.put('l', 'g');
        f9104a.put('t', 'h');
        f9104a.put('0', 'i');
        f9104a.put('U', 'j');
        f9104a.put('3', 'k');
        f9104a.put('Q', 'l');
        f9104a.put('r', 'm');
        f9104a.put('g', 'n');
        f9104a.put('E', 'o');
        f9104a.put(Character.valueOf(AbstractJsonLexerKt.UNICODE_ESC), 'p');
        f9104a.put('q', 'q');
        f9104a.put('8', 'r');
        f9104a.put('s', 's');
        f9104a.put('w', 't');
        f9104a.put('/', Character.valueOf(AbstractJsonLexerKt.UNICODE_ESC));
        f9104a.put('X', 'v');
        f9104a.put('M', 'w');
        f9104a.put('e', 'x');
        f9104a.put('B', 'y');
        f9104a.put('A', 'z');
        f9104a.put('T', '0');
        f9104a.put('2', '1');
        f9104a.put('F', '2');
        f9104a.put('b', '3');
        f9104a.put('9', '4');
        f9104a.put('P', '5');
        f9104a.put('1', '6');
        f9104a.put('O', '7');
        f9104a.put('I', '8');
        f9104a.put('K', '9');
        f9104a.put('m', '+');
        f9104a.put('C', '/');
        HashMap hashMap2 = new HashMap();
        b = hashMap2;
        hashMap2.put('A', 'v');
        b.put('B', 'S');
        b.put('C', 'o');
        b.put('D', 'a');
        b.put('E', 'j');
        b.put('F', 'c');
        b.put('G', '7');
        b.put('H', 'd');
        b.put('I', 'R');
        b.put('J', 'z');
        b.put('K', 'p');
        b.put('L', 'W');
        b.put('M', 'i');
        b.put('N', 'f');
        b.put('O', 'G');
        b.put('P', 'y');
        b.put('Q', 'N');
        b.put('R', 'x');
        b.put('S', 'Z');
        b.put('T', 'n');
        b.put('U', 'V');
        b.put('V', '5');
        b.put('W', 'k');
        b.put('X', '+');
        b.put('Y', 'D');
        b.put('Z', 'H');
        b.put('a', 'L');
        b.put('b', 'Y');
        b.put('c', 'h');
        b.put('d', 'J');
        b.put('e', '4');
        b.put('f', '6');
        b.put('g', 'l');
        b.put('h', 't');
        b.put('i', '0');
        b.put('j', 'U');
        b.put('k', '3');
        b.put('l', 'Q');
        b.put('m', 'r');
        b.put('n', 'g');
        b.put('o', 'E');
        b.put('p', Character.valueOf(AbstractJsonLexerKt.UNICODE_ESC));
        b.put('q', 'q');
        b.put('r', '8');
        b.put('s', 's');
        b.put('t', 'w');
        b.put(Character.valueOf(AbstractJsonLexerKt.UNICODE_ESC), '/');
        b.put('v', 'X');
        b.put('w', 'M');
        b.put('x', 'e');
        b.put('y', 'B');
        b.put('z', 'A');
        b.put('0', 'T');
        b.put('1', '2');
        b.put('2', 'F');
        b.put('3', 'b');
        b.put('4', '9');
        b.put('5', 'P');
        b.put('6', '1');
        b.put('7', 'O');
        b.put('8', 'I');
        b.put('9', 'K');
        b.put('+', 'm');
        b.put('/', 'C');
    }

    public static String a(String str) {
        return p0.b(str);
    }

    public static String b(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        return p0.c(str);
    }
}
