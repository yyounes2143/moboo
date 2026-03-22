package com.applovin.impl;

import android.util.Xml;
import com.applovin.impl.sdk.utils.StringUtils;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Stack;
import java.util.concurrent.TimeUnit;
import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.Locator;
import org.xml.sax.SAXException;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class c8 {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.o f3101a;
    private Stack b;
    private StringBuilder c;
    private long d;
    private b e;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class b extends b8 {
        public b(String str, Map map, b8 b8Var) {
            super(str, map, b8Var);
        }

        public void a(b8 b8Var) {
            if (b8Var != null) {
                this.e.add(b8Var);
                return;
            }
            throw new IllegalArgumentException("None specified.");
        }

        public void d(String str) {
            this.d = str;
        }
    }

    public c8(com.applovin.impl.sdk.k kVar) {
        if (kVar != null) {
            this.f3101a = kVar.O();
            return;
        }
        throw new IllegalArgumentException("No sdk specified.");
    }

    public static b8 a(String str, com.applovin.impl.sdk.k kVar) {
        return new c8(kVar).a(str);
    }

    public b8 a(String str) {
        if (str != null) {
            this.c = new StringBuilder();
            this.b = new Stack();
            this.e = null;
            Xml.parse(str, new a());
            b bVar = this.e;
            if (bVar != null) {
                return bVar;
            }
            throw new SAXException("Unable to parse XML into node");
        }
        throw new IllegalArgumentException("Unable to parse. No XML specified.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map a(Attributes attributes) {
        if (attributes != null) {
            int length = attributes.getLength();
            HashMap hashMap = new HashMap(length);
            for (int i = 0; i < length; i++) {
                hashMap.put(attributes.getQName(i), attributes.getValue(i));
            }
            return hashMap;
        }
        return Collections.EMPTY_MAP;
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public class a implements ContentHandler {
        public a() {
        }

        @Override // org.xml.sax.ContentHandler
        public void characters(char[] cArr, int i, int i2) {
            String trim = new String(Arrays.copyOfRange(cArr, i, i2)).trim();
            if (StringUtils.isValidString(trim)) {
                c8.this.c.append(trim);
            }
        }

        @Override // org.xml.sax.ContentHandler
        public void endDocument() {
            long seconds = TimeUnit.MILLISECONDS.toSeconds(System.currentTimeMillis()) - c8.this.d;
            com.applovin.impl.sdk.o unused = c8.this.f3101a;
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar = c8.this.f3101a;
                oVar.a("XmlParser", "Finished parsing in " + seconds + " seconds");
            }
        }

        @Override // org.xml.sax.ContentHandler
        public void endElement(String str, String str2, String str3) {
            c8 c8Var = c8.this;
            c8Var.e = (b) c8Var.b.pop();
            c8.this.e.d(c8.this.c.toString().trim());
            c8.this.c.setLength(0);
        }

        @Override // org.xml.sax.ContentHandler
        public void startDocument() {
            com.applovin.impl.sdk.o unused = c8.this.f3101a;
            if (com.applovin.impl.sdk.o.a()) {
                c8.this.f3101a.a("XmlParser", "Begin parsing...");
            }
            c8.this.d = TimeUnit.MILLISECONDS.toSeconds(System.currentTimeMillis());
        }

        @Override // org.xml.sax.ContentHandler
        public void startElement(String str, String str2, String str3, Attributes attributes) {
            b bVar;
            try {
                if (!c8.this.b.isEmpty()) {
                    bVar = (b) c8.this.b.peek();
                } else {
                    bVar = null;
                }
                b bVar2 = new b(str2, c8.this.a(attributes), bVar);
                if (bVar != null) {
                    bVar.a(bVar2);
                }
                c8.this.b.push(bVar2);
            } catch (Exception e) {
                com.applovin.impl.sdk.o unused = c8.this.f3101a;
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o oVar = c8.this.f3101a;
                    oVar.a("XmlParser", "Unable to process element <" + str2 + ">", e);
                }
                throw new SAXException("Failed to start element", e);
            }
        }

        @Override // org.xml.sax.ContentHandler
        public void endPrefixMapping(String str) {
        }

        @Override // org.xml.sax.ContentHandler
        public void setDocumentLocator(Locator locator) {
        }

        @Override // org.xml.sax.ContentHandler
        public void skippedEntity(String str) {
        }

        @Override // org.xml.sax.ContentHandler
        public void processingInstruction(String str, String str2) {
        }

        @Override // org.xml.sax.ContentHandler
        public void startPrefixMapping(String str, String str2) {
        }

        @Override // org.xml.sax.ContentHandler
        public void ignorableWhitespace(char[] cArr, int i, int i2) {
        }
    }
}
