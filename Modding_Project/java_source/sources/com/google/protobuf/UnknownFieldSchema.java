package com.google.protobuf;

import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
@CheckReturnValue
/* loaded from: classes5.dex */
public abstract class UnknownFieldSchema<T, B> {
    static final int DEFAULT_RECURSION_LIMIT = 100;
    private static volatile int recursionLimit = 100;

    private final void mergeFrom(B b, Reader reader, int i) throws IOException {
        while (reader.getFieldNumber() != Integer.MAX_VALUE && mergeOneFieldFrom(b, reader, i)) {
        }
    }

    public abstract void addFixed32(B b, int i, int i2);

    public abstract void addFixed64(B b, int i, long j);

    public abstract void addGroup(B b, int i, T t);

    public abstract void addLengthDelimited(B b, int i, ByteString byteString);

    public abstract void addVarint(B b, int i, long j);

    public abstract B getBuilderFromMessage(Object obj);

    public abstract T getFromMessage(Object obj);

    public abstract int getSerializedSize(T t);

    public abstract int getSerializedSizeAsMessageSet(T t);

    public abstract void makeImmutable(Object obj);

    public abstract T merge(T t, T t2);

    public final boolean mergeOneFieldFrom(B b, Reader reader, int i) throws IOException {
        int tag = reader.getTag();
        int tagFieldNumber = WireFormat.getTagFieldNumber(tag);
        int tagWireType = WireFormat.getTagWireType(tag);
        if (tagWireType != 0) {
            if (tagWireType != 1) {
                if (tagWireType != 2) {
                    if (tagWireType != 3) {
                        if (tagWireType != 4) {
                            if (tagWireType == 5) {
                                addFixed32(b, tagFieldNumber, reader.readFixed32());
                                return true;
                            }
                            throw InvalidProtocolBufferException.invalidWireType();
                        }
                        return false;
                    }
                    B newBuilder = newBuilder();
                    int makeTag = WireFormat.makeTag(tagFieldNumber, 4);
                    int i2 = i + 1;
                    if (i2 < recursionLimit) {
                        mergeFrom(newBuilder, reader, i2);
                        if (makeTag == reader.getTag()) {
                            addGroup(b, tagFieldNumber, toImmutable(newBuilder));
                            return true;
                        }
                        throw InvalidProtocolBufferException.invalidEndTag();
                    }
                    throw InvalidProtocolBufferException.recursionLimitExceeded();
                }
                addLengthDelimited(b, tagFieldNumber, reader.readBytes());
                return true;
            }
            addFixed64(b, tagFieldNumber, reader.readFixed64());
            return true;
        }
        addVarint(b, tagFieldNumber, reader.readInt64());
        return true;
    }

    public abstract B newBuilder();

    public abstract void setBuilderToMessage(Object obj, B b);

    public void setRecursionLimit(int i) {
        recursionLimit = i;
    }

    public abstract void setToMessage(Object obj, T t);

    public abstract boolean shouldDiscardUnknownFields(Reader reader);

    public abstract T toImmutable(B b);

    public abstract void writeAsMessageSetTo(T t, Writer writer) throws IOException;

    public abstract void writeTo(T t, Writer writer) throws IOException;
}
