package com.google.zxing.client.result;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.Result;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import java.util.HashMap;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public final class ExpandedProductResultParser extends ResultParser {
    private static String findAIvalue(int i, String str) {
        if (str.charAt(i) != '(') {
            return null;
        }
        String substring = str.substring(i + 1);
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < substring.length(); i2++) {
            char charAt = substring.charAt(i2);
            if (charAt == ')') {
                return sb.toString();
            }
            if (charAt < '0' || charAt > '9') {
                return null;
            }
            sb.append(charAt);
        }
        return sb.toString();
    }

    private static String findValue(int i, String str) {
        StringBuilder sb = new StringBuilder();
        String substring = str.substring(i);
        for (int i2 = 0; i2 < substring.length(); i2++) {
            char charAt = substring.charAt(i2);
            if (charAt == '(') {
                if (findAIvalue(i2, substring) != null) {
                    break;
                }
                sb.append('(');
            } else {
                sb.append(charAt);
            }
        }
        return sb.toString();
    }

    @Override // com.google.zxing.client.result.ResultParser
    public ExpandedProductParsedResult parse(Result result) {
        ExpandedProductParsedResult expandedProductParsedResult;
        ExpandedProductParsedResult expandedProductParsedResult2 = null;
        if (result.getBarcodeFormat() != BarcodeFormat.RSS_EXPANDED) {
            return null;
        }
        String massagedText = ResultParser.getMassagedText(result);
        HashMap hashMap = new HashMap();
        int i = 0;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        String str8 = null;
        String str9 = null;
        String str10 = null;
        String str11 = null;
        String str12 = null;
        String str13 = null;
        while (i < massagedText.length()) {
            String findAIvalue = findAIvalue(i, massagedText);
            if (findAIvalue == null) {
                return expandedProductParsedResult2;
            }
            int length = i + findAIvalue.length() + 2;
            String findValue = findValue(length, massagedText);
            i = length + findValue.length();
            char c = 65535;
            switch (findAIvalue.hashCode()) {
                case 1536:
                    expandedProductParsedResult = expandedProductParsedResult2;
                    if (findAIvalue.equals("00")) {
                        c = 0;
                        break;
                    }
                    break;
                case 1537:
                    expandedProductParsedResult = expandedProductParsedResult2;
                    if (findAIvalue.equals("01")) {
                        c = 1;
                        break;
                    }
                    break;
                case 1567:
                    expandedProductParsedResult = expandedProductParsedResult2;
                    if (findAIvalue.equals("10")) {
                        c = 2;
                        break;
                    }
                    break;
                case 1568:
                    expandedProductParsedResult = expandedProductParsedResult2;
                    if (findAIvalue.equals("11")) {
                        c = 3;
                        break;
                    }
                    break;
                case 1570:
                    expandedProductParsedResult = expandedProductParsedResult2;
                    if (findAIvalue.equals(DbParams.GZIP_TRANSPORT_ENCRYPT)) {
                        c = 4;
                        break;
                    }
                    break;
                case 1572:
                    expandedProductParsedResult = expandedProductParsedResult2;
                    if (findAIvalue.equals("15")) {
                        c = 5;
                        break;
                    }
                    break;
                case 1574:
                    expandedProductParsedResult = expandedProductParsedResult2;
                    if (findAIvalue.equals("17")) {
                        c = 6;
                        break;
                    }
                    break;
                case 1567966:
                    expandedProductParsedResult = expandedProductParsedResult2;
                    if (findAIvalue.equals("3100")) {
                        c = 7;
                        break;
                    }
                    break;
                case 1567967:
                    expandedProductParsedResult = expandedProductParsedResult2;
                    if (findAIvalue.equals("3101")) {
                        c = '\b';
                        break;
                    }
                    break;
                case 1567968:
                    expandedProductParsedResult = expandedProductParsedResult2;
                    if (findAIvalue.equals("3102")) {
                        c = '\t';
                        break;
                    }
                    break;
                case 1567969:
                    expandedProductParsedResult = expandedProductParsedResult2;
                    if (findAIvalue.equals("3103")) {
                        c = '\n';
                        break;
                    }
                    break;
                case 1567970:
                    expandedProductParsedResult = expandedProductParsedResult2;
                    if (findAIvalue.equals("3104")) {
                        c = 11;
                        break;
                    }
                    break;
                case 1567971:
                    expandedProductParsedResult = expandedProductParsedResult2;
                    if (findAIvalue.equals("3105")) {
                        c = '\f';
                        break;
                    }
                    break;
                case 1567972:
                    expandedProductParsedResult = expandedProductParsedResult2;
                    if (findAIvalue.equals("3106")) {
                        c = '\r';
                        break;
                    }
                    break;
                case 1567973:
                    expandedProductParsedResult = expandedProductParsedResult2;
                    if (findAIvalue.equals("3107")) {
                        c = 14;
                        break;
                    }
                    break;
                case 1567974:
                    expandedProductParsedResult = expandedProductParsedResult2;
                    if (findAIvalue.equals("3108")) {
                        c = 15;
                        break;
                    }
                    break;
                case 1567975:
                    expandedProductParsedResult = expandedProductParsedResult2;
                    if (findAIvalue.equals("3109")) {
                        c = 16;
                        break;
                    }
                    break;
                case 1568927:
                    expandedProductParsedResult = expandedProductParsedResult2;
                    if (findAIvalue.equals("3200")) {
                        c = 17;
                        break;
                    }
                    break;
                case 1568928:
                    expandedProductParsedResult = expandedProductParsedResult2;
                    if (findAIvalue.equals("3201")) {
                        c = 18;
                        break;
                    }
                    break;
                case 1568929:
                    expandedProductParsedResult = expandedProductParsedResult2;
                    if (findAIvalue.equals("3202")) {
                        c = 19;
                        break;
                    }
                    break;
                case 1568930:
                    expandedProductParsedResult = expandedProductParsedResult2;
                    if (findAIvalue.equals("3203")) {
                        c = 20;
                        break;
                    }
                    break;
                case 1568931:
                    expandedProductParsedResult = expandedProductParsedResult2;
                    if (findAIvalue.equals("3204")) {
                        c = 21;
                        break;
                    }
                    break;
                case 1568932:
                    expandedProductParsedResult = expandedProductParsedResult2;
                    if (findAIvalue.equals("3205")) {
                        c = 22;
                        break;
                    }
                    break;
                case 1568933:
                    expandedProductParsedResult = expandedProductParsedResult2;
                    if (findAIvalue.equals("3206")) {
                        c = 23;
                        break;
                    }
                    break;
                case 1568934:
                    expandedProductParsedResult = expandedProductParsedResult2;
                    if (findAIvalue.equals("3207")) {
                        c = 24;
                        break;
                    }
                    break;
                case 1568935:
                    expandedProductParsedResult = expandedProductParsedResult2;
                    if (findAIvalue.equals("3208")) {
                        c = 25;
                        break;
                    }
                    break;
                case 1568936:
                    expandedProductParsedResult = expandedProductParsedResult2;
                    if (findAIvalue.equals("3209")) {
                        c = 26;
                        break;
                    }
                    break;
                case 1575716:
                    expandedProductParsedResult = expandedProductParsedResult2;
                    if (findAIvalue.equals("3920")) {
                        c = 27;
                        break;
                    }
                    break;
                case 1575717:
                    expandedProductParsedResult = expandedProductParsedResult2;
                    if (findAIvalue.equals("3921")) {
                        c = 28;
                        break;
                    }
                    break;
                case 1575718:
                    expandedProductParsedResult = expandedProductParsedResult2;
                    if (findAIvalue.equals("3922")) {
                        c = 29;
                        break;
                    }
                    break;
                case 1575719:
                    expandedProductParsedResult = expandedProductParsedResult2;
                    if (findAIvalue.equals("3923")) {
                        c = 30;
                        break;
                    }
                    break;
                case 1575747:
                    expandedProductParsedResult = expandedProductParsedResult2;
                    if (findAIvalue.equals("3930")) {
                        c = 31;
                        break;
                    }
                    break;
                case 1575748:
                    expandedProductParsedResult = expandedProductParsedResult2;
                    if (findAIvalue.equals("3931")) {
                        c = ' ';
                        break;
                    }
                    break;
                case 1575749:
                    expandedProductParsedResult = expandedProductParsedResult2;
                    if (findAIvalue.equals("3932")) {
                        c = '!';
                        break;
                    }
                    break;
                case 1575750:
                    expandedProductParsedResult = expandedProductParsedResult2;
                    if (findAIvalue.equals("3933")) {
                        c = '\"';
                        break;
                    }
                    break;
                default:
                    expandedProductParsedResult = expandedProductParsedResult2;
                    break;
            }
            switch (c) {
                case 0:
                    str2 = findValue;
                    continue;
                    expandedProductParsedResult2 = expandedProductParsedResult;
                case 1:
                    str = findValue;
                    continue;
                    expandedProductParsedResult2 = expandedProductParsedResult;
                case 2:
                    str3 = findValue;
                    continue;
                    expandedProductParsedResult2 = expandedProductParsedResult;
                case 3:
                    str4 = findValue;
                    continue;
                    expandedProductParsedResult2 = expandedProductParsedResult;
                case 4:
                    str5 = findValue;
                    continue;
                    expandedProductParsedResult2 = expandedProductParsedResult;
                case 5:
                    str6 = findValue;
                    continue;
                    expandedProductParsedResult2 = expandedProductParsedResult;
                case 6:
                    str7 = findValue;
                    continue;
                    expandedProductParsedResult2 = expandedProductParsedResult;
                case 7:
                case '\b':
                case '\t':
                case '\n':
                case 11:
                case '\f':
                case '\r':
                case 14:
                case 15:
                case 16:
                    str10 = findAIvalue.substring(3);
                    str9 = ExpandedProductParsedResult.KILOGRAM;
                    break;
                case 17:
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                    str10 = findAIvalue.substring(3);
                    str9 = ExpandedProductParsedResult.POUND;
                    break;
                case 27:
                case 28:
                case 29:
                case 30:
                    str12 = findAIvalue.substring(3);
                    str11 = findValue;
                    continue;
                    expandedProductParsedResult2 = expandedProductParsedResult;
                case 31:
                case ' ':
                case '!':
                case '\"':
                    if (findValue.length() < 4) {
                        return expandedProductParsedResult;
                    }
                    str11 = findValue.substring(3);
                    str13 = findValue.substring(0, 3);
                    str12 = findAIvalue.substring(3);
                    continue;
                    expandedProductParsedResult2 = expandedProductParsedResult;
                default:
                    hashMap.put(findAIvalue, findValue);
                    continue;
                    expandedProductParsedResult2 = expandedProductParsedResult;
            }
            str8 = findValue;
            expandedProductParsedResult2 = expandedProductParsedResult;
        }
        return new ExpandedProductParsedResult(massagedText, str, str2, str3, str4, str5, str6, str7, str8, str9, str10, str11, str12, str13, hashMap);
    }
}
