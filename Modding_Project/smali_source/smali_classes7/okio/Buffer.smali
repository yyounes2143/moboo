.class public final Lokio/Buffer;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lokio/BufferedSource;
.implements Lokio/BufferedSink;
.implements Ljava/lang/Cloneable;
.implements Ljava/nio/channels/ByteChannel;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/Buffer$UnsafeCursor;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00b6\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u001a\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0005\n\u0002\u0008\u0005\n\u0002\u0010\n\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0012\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u001a\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0018\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u000e\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0002\u00bb\u0001B\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0000H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\u000c\u001a\u00020\u0000H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\u0008J\u000f\u0010\r\u001a\u00020\u0000H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u0008J\u000f\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0017\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0017\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0001H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000f\u0010\u001b\u001a\u00020\u001aH\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\'\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u001f\u0010 J\r\u0010!\u001a\u00020\u0011\u00a2\u0006\u0004\u0008!\u0010\"J\u000f\u0010$\u001a\u00020#H\u0016\u00a2\u0006\u0004\u0008$\u0010%J\u0018\u0010\'\u001a\u00020#2\u0006\u0010&\u001a\u00020\u0011H\u0087\u0002\u00a2\u0006\u0004\u0008\'\u0010(J\u000f\u0010*\u001a\u00020)H\u0016\u00a2\u0006\u0004\u0008*\u0010+J\u000f\u0010-\u001a\u00020,H\u0016\u00a2\u0006\u0004\u0008-\u0010.J\u000f\u0010/\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008/\u0010\"J\u000f\u00100\u001a\u00020)H\u0016\u00a2\u0006\u0004\u00080\u0010+J\u000f\u00101\u001a\u00020,H\u0016\u00a2\u0006\u0004\u00081\u0010.J\u000f\u00102\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u00082\u0010\"J\u000f\u00103\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u00083\u0010\"J\u000f\u00104\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u00084\u0010\"J\u000f\u00106\u001a\u000205H\u0016\u00a2\u0006\u0004\u00086\u00107J\u0017\u00108\u001a\u0002052\u0006\u0010\u0012\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u00088\u00109J\u0017\u0010<\u001a\u00020,2\u0006\u0010;\u001a\u00020:H\u0016\u00a2\u0006\u0004\u0008<\u0010=J\u001f\u0010?\u001a\u00020\u00132\u0006\u0010>\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008?\u0010@J\u0017\u0010B\u001a\u00020\u00112\u0006\u0010>\u001a\u00020AH\u0016\u00a2\u0006\u0004\u0008B\u0010CJ\u000f\u0010E\u001a\u00020DH\u0016\u00a2\u0006\u0004\u0008E\u0010FJ\u0017\u0010G\u001a\u00020D2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008G\u0010HJ\u0017\u0010K\u001a\u00020D2\u0006\u0010J\u001a\u00020IH\u0016\u00a2\u0006\u0004\u0008K\u0010LJ\u001f\u0010M\u001a\u00020D2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010J\u001a\u00020IH\u0016\u00a2\u0006\u0004\u0008M\u0010NJ\u000f\u0010O\u001a\u00020DH\u0016\u00a2\u0006\u0004\u0008O\u0010FJ\u0017\u0010Q\u001a\u00020D2\u0006\u0010P\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008Q\u0010HJ\u000f\u0010R\u001a\u00020,H\u0016\u00a2\u0006\u0004\u0008R\u0010.J\u000f\u0010T\u001a\u00020SH\u0016\u00a2\u0006\u0004\u0008T\u0010UJ\u0017\u0010V\u001a\u00020S2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008V\u0010WJ\u0017\u0010X\u001a\u00020\u00132\u0006\u0010>\u001a\u00020SH\u0016\u00a2\u0006\u0004\u0008X\u0010YJ\'\u0010Z\u001a\u00020,2\u0006\u0010>\u001a\u00020S2\u0006\u0010\u001e\u001a\u00020,2\u0006\u0010\u0012\u001a\u00020,H\u0016\u00a2\u0006\u0004\u0008Z\u0010[J\u0017\u0010Z\u001a\u00020,2\u0006\u0010>\u001a\u00020\\H\u0016\u00a2\u0006\u0004\u0008Z\u0010]J\r\u0010^\u001a\u00020\u0013\u00a2\u0006\u0004\u0008^\u0010\u0006J\u0017\u0010_\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008_\u0010\u0015J\u0017\u0010a\u001a\u00020\u00002\u0006\u0010`\u001a\u000205H\u0016\u00a2\u0006\u0004\u0008a\u0010bJ\u0017\u0010d\u001a\u00020\u00002\u0006\u0010c\u001a\u00020DH\u0016\u00a2\u0006\u0004\u0008d\u0010eJ\'\u0010h\u001a\u00020\u00002\u0006\u0010c\u001a\u00020D2\u0006\u0010f\u001a\u00020,2\u0006\u0010g\u001a\u00020,H\u0016\u00a2\u0006\u0004\u0008h\u0010iJ\u0017\u0010k\u001a\u00020\u00002\u0006\u0010j\u001a\u00020,H\u0016\u00a2\u0006\u0004\u0008k\u0010lJ\u001f\u0010m\u001a\u00020\u00002\u0006\u0010c\u001a\u00020D2\u0006\u0010J\u001a\u00020IH\u0016\u00a2\u0006\u0004\u0008m\u0010nJ/\u0010o\u001a\u00020\u00002\u0006\u0010c\u001a\u00020D2\u0006\u0010f\u001a\u00020,2\u0006\u0010g\u001a\u00020,2\u0006\u0010J\u001a\u00020IH\u0016\u00a2\u0006\u0004\u0008o\u0010pJ\u0017\u0010r\u001a\u00020\u00002\u0006\u0010q\u001a\u00020SH\u0016\u00a2\u0006\u0004\u0008r\u0010sJ\'\u0010t\u001a\u00020\u00002\u0006\u0010q\u001a\u00020S2\u0006\u0010\u001e\u001a\u00020,2\u0006\u0010\u0012\u001a\u00020,H\u0016\u00a2\u0006\u0004\u0008t\u0010uJ\u0017\u0010v\u001a\u00020,2\u0006\u0010q\u001a\u00020\\H\u0016\u00a2\u0006\u0004\u0008v\u0010]J\u0017\u0010x\u001a\u00020\u00112\u0006\u0010q\u001a\u00020wH\u0016\u00a2\u0006\u0004\u0008x\u0010yJ\u0017\u0010{\u001a\u00020\u00002\u0006\u0010z\u001a\u00020,H\u0016\u00a2\u0006\u0004\u0008{\u0010lJ\u0017\u0010}\u001a\u00020\u00002\u0006\u0010|\u001a\u00020,H\u0016\u00a2\u0006\u0004\u0008}\u0010lJ\u0017\u0010\u007f\u001a\u00020\u00002\u0006\u0010~\u001a\u00020,H\u0016\u00a2\u0006\u0004\u0008\u007f\u0010lJ\u0019\u0010\u0080\u0001\u001a\u00020\u00002\u0006\u0010~\u001a\u00020,H\u0016\u00a2\u0006\u0005\u0008\u0080\u0001\u0010lJ\u001b\u0010\u0082\u0001\u001a\u00020\u00002\u0007\u0010\u0081\u0001\u001a\u00020\u0011H\u0016\u00a2\u0006\u0006\u0008\u0082\u0001\u0010\u0083\u0001J\u001b\u0010\u0084\u0001\u001a\u00020\u00002\u0007\u0010\u0081\u0001\u001a\u00020\u0011H\u0016\u00a2\u0006\u0006\u0008\u0084\u0001\u0010\u0083\u0001J\u001b\u0010\u0085\u0001\u001a\u00020\u00002\u0007\u0010\u0081\u0001\u001a\u00020\u0011H\u0016\u00a2\u0006\u0006\u0008\u0085\u0001\u0010\u0083\u0001J\u001c\u0010\u0088\u0001\u001a\u00030\u0087\u00012\u0007\u0010\u0086\u0001\u001a\u00020,H\u0000\u00a2\u0006\u0006\u0008\u0088\u0001\u0010\u0089\u0001J!\u0010\u008a\u0001\u001a\u00020\u00132\u0006\u0010q\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0011H\u0016\u00a2\u0006\u0005\u0008\u008a\u0001\u0010@J \u0010Z\u001a\u00020\u00112\u0006\u0010>\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0011H\u0016\u00a2\u0006\u0005\u0008Z\u0010\u008b\u0001J,\u0010\u008e\u0001\u001a\u00020\u00112\u0006\u0010z\u001a\u00020#2\u0007\u0010\u008c\u0001\u001a\u00020\u00112\u0007\u0010\u008d\u0001\u001a\u00020\u0011H\u0016\u00a2\u0006\u0006\u0008\u008e\u0001\u0010\u008f\u0001J\u001b\u0010\u0091\u0001\u001a\u00020\u00112\u0007\u0010\u0090\u0001\u001a\u000205H\u0016\u00a2\u0006\u0006\u0008\u0091\u0001\u0010\u0092\u0001J$\u0010\u0093\u0001\u001a\u00020\u00112\u0007\u0010\u0090\u0001\u001a\u0002052\u0007\u0010\u008c\u0001\u001a\u00020\u0011H\u0016\u00a2\u0006\u0006\u0008\u0093\u0001\u0010\u0094\u0001J\u001b\u0010\u0096\u0001\u001a\u00020\u00112\u0007\u0010\u0095\u0001\u001a\u000205H\u0016\u00a2\u0006\u0006\u0008\u0096\u0001\u0010\u0092\u0001J$\u0010\u0097\u0001\u001a\u00020\u00112\u0007\u0010\u0095\u0001\u001a\u0002052\u0007\u0010\u008c\u0001\u001a\u00020\u0011H\u0016\u00a2\u0006\u0006\u0008\u0097\u0001\u0010\u0094\u0001J#\u0010\u0098\u0001\u001a\u00020\u000e2\u0006\u0010\u001e\u001a\u00020\u00112\u0007\u0010\u0090\u0001\u001a\u000205H\u0016\u00a2\u0006\u0006\u0008\u0098\u0001\u0010\u0099\u0001J4\u0010\u009b\u0001\u001a\u00020\u000e2\u0006\u0010\u001e\u001a\u00020\u00112\u0007\u0010\u0090\u0001\u001a\u0002052\u0007\u0010\u009a\u0001\u001a\u00020,2\u0006\u0010\u0012\u001a\u00020,H\u0016\u00a2\u0006\u0006\u0008\u009b\u0001\u0010\u009c\u0001J\u0011\u0010\u009d\u0001\u001a\u00020\u0013H\u0016\u00a2\u0006\u0005\u0008\u009d\u0001\u0010\u0006J\u0011\u0010\u009e\u0001\u001a\u00020\u000eH\u0016\u00a2\u0006\u0005\u0008\u009e\u0001\u0010\u0010J\u0011\u0010\u009f\u0001\u001a\u00020\u0013H\u0016\u00a2\u0006\u0005\u0008\u009f\u0001\u0010\u0006J\u0013\u0010\u00a1\u0001\u001a\u00030\u00a0\u0001H\u0016\u00a2\u0006\u0006\u0008\u00a1\u0001\u0010\u00a2\u0001J\u001f\u0010\u00a5\u0001\u001a\u00020\u000e2\n\u0010\u00a4\u0001\u001a\u0005\u0018\u00010\u00a3\u0001H\u0096\u0002\u00a2\u0006\u0006\u0008\u00a5\u0001\u0010\u00a6\u0001J\u0011\u0010\u00a7\u0001\u001a\u00020,H\u0016\u00a2\u0006\u0005\u0008\u00a7\u0001\u0010.J\u0011\u0010\u00a8\u0001\u001a\u00020DH\u0016\u00a2\u0006\u0005\u0008\u00a8\u0001\u0010FJ\u000f\u0010\u00a9\u0001\u001a\u00020\u0000\u00a2\u0006\u0005\u0008\u00a9\u0001\u0010\u0008J\u0011\u0010\u00aa\u0001\u001a\u00020\u0000H\u0016\u00a2\u0006\u0005\u0008\u00aa\u0001\u0010\u0008J\u000f\u0010\u00ab\u0001\u001a\u000205\u00a2\u0006\u0005\u0008\u00ab\u0001\u00107J\u0018\u0010\u00ac\u0001\u001a\u0002052\u0006\u0010\u0012\u001a\u00020,\u00a2\u0006\u0006\u0008\u00ac\u0001\u0010\u00ad\u0001J\u001f\u0010\u00b0\u0001\u001a\u00030\u00ae\u00012\n\u0008\u0002\u0010\u00af\u0001\u001a\u00030\u00ae\u0001H\u0007\u00a2\u0006\u0006\u0008\u00b0\u0001\u0010\u00b1\u0001R\u001c\u0010\u00b3\u0001\u001a\u0005\u0018\u00010\u0087\u00018\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0008\n\u0006\u0008\u008a\u0001\u0010\u00b2\u0001R/\u0010\u00b8\u0001\u001a\u00020\u00112\u0007\u0010\u00b4\u0001\u001a\u00020\u00118G@@X\u0086\u000e\u00a2\u0006\u0015\n\u0005\u0008x\u0010\u00b5\u0001\u001a\u0005\u0008\u00b6\u0001\u0010\"\"\u0005\u0008\u00b7\u0001\u0010\u0015R\u0016\u0010\u00ba\u0001\u001a\u00020\u00008VX\u0096\u0004\u00a2\u0006\u0007\u001a\u0005\u0008\u00b9\u0001\u0010\u0008\u00a8\u0006\u00bc\u0001"
    }
    d2 = {
        "Lokio/Buffer;",
        "Lokio/BufferedSource;",
        "Lokio/BufferedSink;",
        "",
        "Ljava/nio/channels/ByteChannel;",
        "<init>",
        "()V",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "()Lokio/Buffer;",
        "Ljava/io/OutputStream;",
        "Www",
        "()Ljava/io/OutputStream;",
        "Kkkkkkkkkkkkkkkkk",
        "Kkkkkkkkkkkkkkkkkk",
        "",
        "Wwwwwwwwwwww",
        "()Z",
        "",
        "byteCount",
        "",
        "Wwwwwwwwwwwwwwwwww",
        "(J)V",
        "Wwwwwwwwwwwwwwwwwwwwwww",
        "(J)Z",
        "peek",
        "()Lokio/BufferedSource;",
        "Ljava/io/InputStream;",
        "Kkkkkkkkkkkkkkkkkkkkkkkkk",
        "()Ljava/io/InputStream;",
        "out",
        "offset",
        "Kkkkkkkkkkkkkkkkkkk",
        "(Lokio/Buffer;JJ)Lokio/Buffer;",
        "Kkkkkkkkkkkkkkkkkkkkk",
        "()J",
        "",
        "readByte",
        "()B",
        "pos",
        "Kkkkkkkkkkkkkkkk",
        "(J)B",
        "",
        "readShort",
        "()S",
        "",
        "readInt",
        "()I",
        "readLong",
        "Wwwwwwwwwwwwwwwwwwww",
        "Wwwwww",
        "Wwwwwwwwwwwwwwwwwww",
        "Wwwwwwwwwww",
        "Kkkkkkkkkkkkkkkkkkkkkkkkkk",
        "Lokio/ByteString;",
        "Wwwwwww",
        "()Lokio/ByteString;",
        "Wwwwwwwwwwwwwww",
        "(J)Lokio/ByteString;",
        "Lokio/Options;",
        "options",
        "Kkkkkkkkkkkkkkkkkkkkkkkk",
        "(Lokio/Options;)I",
        "sink",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Lokio/Buffer;J)V",
        "Lokio/Sink;",
        "Wwww",
        "(Lokio/Sink;)J",
        "",
        "Kkkkk",
        "()Ljava/lang/String;",
        "Wwwwwwwwwwwwwwww",
        "(J)Ljava/lang/String;",
        "Ljava/nio/charset/Charset;",
        "charset",
        "Wwwwwwwwww",
        "(Ljava/nio/charset/Charset;)Ljava/lang/String;",
        "Kkkkkk",
        "(JLjava/nio/charset/Charset;)Ljava/lang/String;",
        "Wwwwwwwwwwwwwwwwwwwwww",
        "limit",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Kkkk",
        "",
        "Wwwwwwwwwwwww",
        "()[B",
        "Wwwwwwwwwwwwwwwwwwwww",
        "(J)[B",
        "readFully",
        "([B)V",
        "read",
        "([BII)I",
        "Ljava/nio/ByteBuffer;",
        "(Ljava/nio/ByteBuffer;)I",
        "Kkkkkkkkkkkkkkkkkkkkkkk",
        "skip",
        "byteString",
        "Illlllllllllllllllllllllll",
        "(Lokio/ByteString;)Lokio/Buffer;",
        "string",
        "Illlllllllllll",
        "(Ljava/lang/String;)Lokio/Buffer;",
        "beginIndex",
        "endIndex",
        "Illllllllllll",
        "(Ljava/lang/String;II)Lokio/Buffer;",
        "codePoint",
        "Illlllllllll",
        "(I)Lokio/Buffer;",
        "Illllllllllllll",
        "(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/Buffer;",
        "Illlllllllllllll",
        "(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;",
        "source",
        "Illllllllllllllllllllllll",
        "([B)Lokio/Buffer;",
        "Illlllllllllllllllllllll",
        "([BII)Lokio/Buffer;",
        "write",
        "Lokio/Source;",
        "Wwwwwwwwwwwwwwwwwwwwwwww",
        "(Lokio/Source;)J",
        "b",
        "Illllllllllllllllllllll",
        "s",
        "Illllllllllllllll",
        "i",
        "Illlllllllllllllllll",
        "Illllllllllllllllll",
        "v",
        "Illlllllllllllllll",
        "(J)Lokio/Buffer;",
        "Illlllllllllllllllllll",
        "Illllllllllllllllllll",
        "minimumCapacity",
        "Lokio/Segment;",
        "Illllllllllllllllllllllllll",
        "(I)Lokio/Segment;",
        "Wwwwwwwwwwwwwwwwwwwwwwwww",
        "(Lokio/Buffer;J)J",
        "fromIndex",
        "toIndex",
        "Kkkkkkkkkkkkkkk",
        "(BJJ)J",
        "bytes",
        "Kkkkkkkkkkkkkk",
        "(Lokio/ByteString;)J",
        "Kkkkkkkkkkkkk",
        "(Lokio/ByteString;J)J",
        "targetBytes",
        "Kkkkkkkkkkkk",
        "Kkkkkkkkkkk",
        "Kkkkkkkkkk",
        "(JLokio/ByteString;)Z",
        "bytesOffset",
        "Kkkkkkkkk",
        "(JLokio/ByteString;II)Z",
        "flush",
        "isOpen",
        "close",
        "Lokio/Timeout;",
        "timeout",
        "()Lokio/Timeout;",
        "",
        "other",
        "equals",
        "(Ljava/lang/Object;)Z",
        "hashCode",
        "toString",
        "Kkkkkkkkkkkkkkkkkkkk",
        "Kkkkkkkkkkkkkkkkkkkkkk",
        "Illllllllllllllllllllllllllll",
        "Illlllllllllllllllllllllllll",
        "(I)Lokio/ByteString;",
        "Lokio/Buffer$UnsafeCursor;",
        "unsafeCursor",
        "Kkkkkkkk",
        "(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;",
        "Lokio/Segment;",
        "head",
        "<set-?>",
        "J",
        "Kk",
        "Kkk",
        "size",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "buffer",
        "UnsafeCursor",
        "okio"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBuffer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Buffer.kt\nokio/Buffer\n+ 2 Util.kt\nokio/-SegmentedByteString\n+ 3 Buffer.kt\nokio/internal/-Buffer\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,641:1\n89#2:642\n86#2:675\n86#2:677\n74#2:737\n74#2:763\n83#2:802\n77#2:813\n89#2:1003\n74#2:1018\n86#2:1122\n89#2:1615\n244#3,32:643\n279#3,10:678\n292#3,18:688\n414#3,2:706\n112#3:708\n416#3:709\n114#3,18:710\n313#3,9:728\n322#3,15:738\n340#3,10:753\n350#3,3:764\n348#3,25:767\n376#3,10:792\n386#3:803\n384#3,9:804\n393#3,7:814\n391#3,20:821\n682#3,60:841\n745#3,56:901\n803#3:957\n806#3:958\n807#3,6:960\n817#3,7:966\n827#3,6:973\n835#3,5:979\n867#3,6:984\n877#3:990\n878#3,11:992\n889#3,5:1004\n898#3,9:1009\n908#3,61:1019\n633#3:1080\n636#3:1081\n637#3,5:1083\n644#3:1088\n647#3,7:1089\n656#3,20:1096\n420#3:1116\n423#3,5:1117\n428#3,10:1123\n439#3,7:1133\n444#3,2:1140\n973#3:1142\n974#3,87:1144\n1064#3,48:1231\n603#3:1279\n610#3,21:1280\n1115#3,7:1301\n1125#3,7:1308\n1135#3,4:1315\n1142#3,8:1319\n1153#3,10:1327\n1166#3,14:1337\n449#3,91:1351\n543#3,40:1442\n586#3:1482\n588#3,13:1484\n1183#3:1497\n1234#3:1498\n1235#3,39:1500\n1276#3,2:1539\n1278#3,4:1542\n1285#3,3:1546\n1289#3,4:1550\n112#3:1554\n1293#3,22:1555\n114#3,18:1577\n1319#3,2:1595\n1321#3,3:1598\n112#3:1601\n1324#3,13:1602\n1337#3,13:1616\n114#3,18:1629\n1354#3,2:1647\n1357#3:1650\n112#3:1651\n1358#3,50:1652\n114#3,18:1702\n1417#3,14:1720\n1434#3,32:1734\n1469#3,12:1766\n1484#3,18:1778\n1506#3:1796\n1507#3:1798\n1512#3,34:1799\n1#4:676\n1#4:959\n1#4:991\n1#4:1082\n1#4:1143\n1#4:1483\n1#4:1499\n1#4:1541\n1#4:1549\n1#4:1597\n1#4:1649\n1#4:1797\n*S KotlinDebug\n*F\n+ 1 Buffer.kt\nokio/Buffer\n*L\n167#1:642\n197#1:675\n235#1:677\n261#1:737\n264#1:763\n267#1:802\n267#1:813\n335#1:1003\n338#1:1018\n374#1:1122\n483#1:1615\n181#1:643,32\n252#1:678,10\n255#1:688,18\n258#1:706,2\n258#1:708\n258#1:709\n258#1:710,18\n261#1:728,9\n261#1:738,15\n264#1:753,10\n264#1:764,3\n264#1:767,25\n267#1:792,10\n267#1:803\n267#1:804,9\n267#1:814,7\n267#1:821,20\n279#1:841,60\n282#1:901,56\n284#1:957\n287#1:958\n287#1:960,6\n289#1:966,7\n292#1:973,6\n295#1:979,5\n329#1:984,6\n335#1:990\n335#1:992,11\n335#1:1004,5\n338#1:1009,9\n338#1:1019,61\n340#1:1080\n343#1:1081\n343#1:1083,5\n345#1:1088\n348#1:1089,7\n351#1:1096,20\n371#1:1116\n374#1:1117,5\n374#1:1123,10\n376#1:1133,7\n379#1:1140,2\n384#1:1142\n384#1:1144,87\n387#1:1231,48\n410#1:1279\n416#1:1280,21\n437#1:1301,7\n441#1:1308,7\n443#1:1315,4\n445#1:1319,8\n449#1:1327,10\n453#1:1337,14\n457#1:1351,91\n460#1:1442,40\n463#1:1482\n463#1:1484,13\n465#1:1497\n465#1:1498\n465#1:1500,39\n467#1:1539,2\n467#1:1542,4\n477#1:1546,3\n477#1:1550,4\n477#1:1554\n477#1:1555,22\n477#1:1577,18\n483#1:1595,2\n483#1:1598,3\n483#1:1601\n483#1:1602,13\n483#1:1616,13\n483#1:1629,18\n488#1:1647,2\n488#1:1650\n488#1:1651\n488#1:1652,50\n488#1:1702,18\n498#1:1720,14\n568#1:1734,32\n570#1:1766,12\n578#1:1778,18\n586#1:1796\n586#1:1798\n588#1:1799,34\n287#1:959\n335#1:991\n343#1:1082\n384#1:1143\n463#1:1483\n465#1:1499\n467#1:1541\n477#1:1549\n483#1:1597\n488#1:1649\n586#1:1797\n*E\n"
    }
.end annotation


# instance fields
.field public Wwwwwwwwwwwwwwwwwwwwwwww:J

.field public Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Kkkkkkk(Lokio/Buffer;Lokio/Buffer$UnsafeCursor;ILjava/lang/Object;)Lokio/Buffer$UnsafeCursor;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lokio/-SegmentedByteString;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/Buffer$UnsafeCursor;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Lokio/Buffer;->Kkkkkkkk(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method


# virtual methods
.method public Illlllllllll(I)Lokio/Buffer;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/16 v0, 0x80

    .line 2
    .line 3
    if-ge p1, v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lokio/Buffer;->Illllllllllllllllllllll(I)Lokio/Buffer;

    .line 6
    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    const/16 v1, 0x800

    .line 10
    .line 11
    const/16 v2, 0x3f

    .line 12
    .line 13
    if-ge p1, v1, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    invoke-virtual {p0, v1}, Lokio/Buffer;->Illllllllllllllllllllllllll(I)Lokio/Segment;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    iget-object v4, v3, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[B

    .line 21
    .line 22
    iget v5, v3, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 23
    .line 24
    shr-int/lit8 v6, p1, 0x6

    .line 25
    .line 26
    or-int/lit16 v6, v6, 0xc0

    .line 27
    .line 28
    int-to-byte v6, v6

    .line 29
    aput-byte v6, v4, v5

    .line 30
    .line 31
    add-int/lit8 v6, v5, 0x1

    .line 32
    .line 33
    and-int/2addr p1, v2

    .line 34
    or-int/2addr p1, v0

    .line 35
    int-to-byte p1, p1

    .line 36
    aput-byte p1, v4, v6

    .line 37
    .line 38
    add-int/2addr v5, v1

    .line 39
    iput v5, v3, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 40
    .line 41
    invoke-virtual {p0}, Lokio/Buffer;->Kk()J

    .line 42
    .line 43
    .line 44
    move-result-wide v0

    .line 45
    const-wide/16 v2, 0x2

    .line 46
    .line 47
    add-long/2addr v0, v2

    .line 48
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->Kkk(J)V

    .line 49
    .line 50
    .line 51
    return-object p0

    .line 52
    :cond_1
    const v1, 0xd800

    .line 53
    .line 54
    .line 55
    if-gt v1, p1, :cond_2

    .line 56
    .line 57
    const v1, 0xe000

    .line 58
    .line 59
    .line 60
    if-ge p1, v1, :cond_2

    .line 61
    .line 62
    invoke-virtual {p0, v2}, Lokio/Buffer;->Illllllllllllllllllllll(I)Lokio/Buffer;

    .line 63
    .line 64
    .line 65
    return-object p0

    .line 66
    :cond_2
    const/high16 v1, 0x10000

    .line 67
    .line 68
    if-ge p1, v1, :cond_3

    .line 69
    .line 70
    const/4 v1, 0x3

    .line 71
    invoke-virtual {p0, v1}, Lokio/Buffer;->Illllllllllllllllllllllllll(I)Lokio/Segment;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    iget-object v4, v3, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[B

    .line 76
    .line 77
    iget v5, v3, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 78
    .line 79
    shr-int/lit8 v6, p1, 0xc

    .line 80
    .line 81
    or-int/lit16 v6, v6, 0xe0

    .line 82
    .line 83
    int-to-byte v6, v6

    .line 84
    aput-byte v6, v4, v5

    .line 85
    .line 86
    add-int/lit8 v6, v5, 0x1

    .line 87
    .line 88
    shr-int/lit8 v7, p1, 0x6

    .line 89
    .line 90
    and-int/2addr v7, v2

    .line 91
    or-int/2addr v7, v0

    .line 92
    int-to-byte v7, v7

    .line 93
    aput-byte v7, v4, v6

    .line 94
    .line 95
    add-int/lit8 v6, v5, 0x2

    .line 96
    .line 97
    and-int/2addr p1, v2

    .line 98
    or-int/2addr p1, v0

    .line 99
    int-to-byte p1, p1

    .line 100
    aput-byte p1, v4, v6

    .line 101
    .line 102
    add-int/2addr v5, v1

    .line 103
    iput v5, v3, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 104
    .line 105
    invoke-virtual {p0}, Lokio/Buffer;->Kk()J

    .line 106
    .line 107
    .line 108
    move-result-wide v0

    .line 109
    const-wide/16 v2, 0x3

    .line 110
    .line 111
    add-long/2addr v0, v2

    .line 112
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->Kkk(J)V

    .line 113
    .line 114
    .line 115
    return-object p0

    .line 116
    :cond_3
    const v1, 0x10ffff

    .line 117
    .line 118
    .line 119
    if-gt p1, v1, :cond_4

    .line 120
    .line 121
    const/4 v1, 0x4

    .line 122
    invoke-virtual {p0, v1}, Lokio/Buffer;->Illllllllllllllllllllllllll(I)Lokio/Segment;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    iget-object v4, v3, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[B

    .line 127
    .line 128
    iget v5, v3, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 129
    .line 130
    shr-int/lit8 v6, p1, 0x12

    .line 131
    .line 132
    or-int/lit16 v6, v6, 0xf0

    .line 133
    .line 134
    int-to-byte v6, v6

    .line 135
    aput-byte v6, v4, v5

    .line 136
    .line 137
    add-int/lit8 v6, v5, 0x1

    .line 138
    .line 139
    shr-int/lit8 v7, p1, 0xc

    .line 140
    .line 141
    and-int/2addr v7, v2

    .line 142
    or-int/2addr v7, v0

    .line 143
    int-to-byte v7, v7

    .line 144
    aput-byte v7, v4, v6

    .line 145
    .line 146
    add-int/lit8 v6, v5, 0x2

    .line 147
    .line 148
    shr-int/lit8 v7, p1, 0x6

    .line 149
    .line 150
    and-int/2addr v7, v2

    .line 151
    or-int/2addr v7, v0

    .line 152
    int-to-byte v7, v7

    .line 153
    aput-byte v7, v4, v6

    .line 154
    .line 155
    add-int/lit8 v6, v5, 0x3

    .line 156
    .line 157
    and-int/2addr p1, v2

    .line 158
    or-int/2addr p1, v0

    .line 159
    int-to-byte p1, p1

    .line 160
    aput-byte p1, v4, v6

    .line 161
    .line 162
    add-int/2addr v5, v1

    .line 163
    iput v5, v3, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 164
    .line 165
    invoke-virtual {p0}, Lokio/Buffer;->Kk()J

    .line 166
    .line 167
    .line 168
    move-result-wide v0

    .line 169
    const-wide/16 v2, 0x4

    .line 170
    .line 171
    add-long/2addr v0, v2

    .line 172
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->Kkk(J)V

    .line 173
    .line 174
    .line 175
    return-object p0

    .line 176
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 177
    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .line 182
    .line 183
    const-string v2, "Unexpected code point: 0x"

    .line 184
    .line 185
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-static {p1}, Lokio/-SegmentedByteString;->Wwwwwwwwwwwwwwwwwwwwwww(I)Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    throw v0
.end method

.method public Illllllllllll(Ljava/lang/String;II)Lokio/Buffer;
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    if-ltz p2, :cond_a

    .line 2
    .line 3
    if-lt p3, p2, :cond_9

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-gt p3, v0, :cond_8

    .line 10
    .line 11
    :goto_0
    if-ge p2, p3, :cond_7

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/16 v1, 0x80

    .line 18
    .line 19
    if-ge v0, v1, :cond_1

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    invoke-virtual {p0, v2}, Lokio/Buffer;->Illllllllllllllllllllllllll(I)Lokio/Segment;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    iget-object v3, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[B

    .line 27
    .line 28
    iget v4, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 29
    .line 30
    sub-int/2addr v4, p2

    .line 31
    rsub-int v5, v4, 0x2000

    .line 32
    .line 33
    invoke-static {p3, v5}, Ljava/lang/Math;->min(II)I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    add-int/lit8 v6, p2, 0x1

    .line 38
    .line 39
    add-int/2addr p2, v4

    .line 40
    int-to-byte v0, v0

    .line 41
    aput-byte v0, v3, p2

    .line 42
    .line 43
    :goto_1
    move p2, v6

    .line 44
    if-ge p2, v5, :cond_0

    .line 45
    .line 46
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-ge v0, v1, :cond_0

    .line 51
    .line 52
    add-int/lit8 v6, p2, 0x1

    .line 53
    .line 54
    add-int/2addr p2, v4

    .line 55
    int-to-byte v0, v0

    .line 56
    aput-byte v0, v3, p2

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_0
    add-int/2addr v4, p2

    .line 60
    iget v0, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 61
    .line 62
    sub-int/2addr v4, v0

    .line 63
    add-int/2addr v0, v4

    .line 64
    iput v0, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 65
    .line 66
    invoke-virtual {p0}, Lokio/Buffer;->Kk()J

    .line 67
    .line 68
    .line 69
    move-result-wide v0

    .line 70
    int-to-long v2, v4

    .line 71
    add-long/2addr v0, v2

    .line 72
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->Kkk(J)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    const/16 v2, 0x800

    .line 77
    .line 78
    if-ge v0, v2, :cond_2

    .line 79
    .line 80
    const/4 v2, 0x2

    .line 81
    invoke-virtual {p0, v2}, Lokio/Buffer;->Illllllllllllllllllllllllll(I)Lokio/Segment;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    iget-object v4, v3, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[B

    .line 86
    .line 87
    iget v5, v3, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 88
    .line 89
    shr-int/lit8 v6, v0, 0x6

    .line 90
    .line 91
    or-int/lit16 v6, v6, 0xc0

    .line 92
    .line 93
    int-to-byte v6, v6

    .line 94
    aput-byte v6, v4, v5

    .line 95
    .line 96
    add-int/lit8 v6, v5, 0x1

    .line 97
    .line 98
    and-int/lit8 v0, v0, 0x3f

    .line 99
    .line 100
    or-int/2addr v0, v1

    .line 101
    int-to-byte v0, v0

    .line 102
    aput-byte v0, v4, v6

    .line 103
    .line 104
    add-int/2addr v5, v2

    .line 105
    iput v5, v3, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 106
    .line 107
    invoke-virtual {p0}, Lokio/Buffer;->Kk()J

    .line 108
    .line 109
    .line 110
    move-result-wide v0

    .line 111
    const-wide/16 v2, 0x2

    .line 112
    .line 113
    add-long/2addr v0, v2

    .line 114
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->Kkk(J)V

    .line 115
    .line 116
    .line 117
    :goto_2
    add-int/lit8 p2, p2, 0x1

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_2
    const v2, 0xd800

    .line 121
    .line 122
    .line 123
    const/16 v3, 0x3f

    .line 124
    .line 125
    if-lt v0, v2, :cond_6

    .line 126
    .line 127
    const v2, 0xdfff

    .line 128
    .line 129
    .line 130
    if-le v0, v2, :cond_3

    .line 131
    .line 132
    goto :goto_4

    .line 133
    :cond_3
    add-int/lit8 v2, p2, 0x1

    .line 134
    .line 135
    if-ge v2, p3, :cond_4

    .line 136
    .line 137
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    goto :goto_3

    .line 142
    :cond_4
    const/4 v4, 0x0

    .line 143
    :goto_3
    const v5, 0xdbff

    .line 144
    .line 145
    .line 146
    if-gt v0, v5, :cond_5

    .line 147
    .line 148
    const v5, 0xdc00

    .line 149
    .line 150
    .line 151
    if-gt v5, v4, :cond_5

    .line 152
    .line 153
    const v5, 0xe000

    .line 154
    .line 155
    .line 156
    if-ge v4, v5, :cond_5

    .line 157
    .line 158
    and-int/lit16 v0, v0, 0x3ff

    .line 159
    .line 160
    shl-int/lit8 v0, v0, 0xa

    .line 161
    .line 162
    and-int/lit16 v2, v4, 0x3ff

    .line 163
    .line 164
    or-int/2addr v0, v2

    .line 165
    const/high16 v2, 0x10000

    .line 166
    .line 167
    add-int/2addr v0, v2

    .line 168
    const/4 v2, 0x4

    .line 169
    invoke-virtual {p0, v2}, Lokio/Buffer;->Illllllllllllllllllllllllll(I)Lokio/Segment;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    iget-object v5, v4, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[B

    .line 174
    .line 175
    iget v6, v4, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 176
    .line 177
    shr-int/lit8 v7, v0, 0x12

    .line 178
    .line 179
    or-int/lit16 v7, v7, 0xf0

    .line 180
    .line 181
    int-to-byte v7, v7

    .line 182
    aput-byte v7, v5, v6

    .line 183
    .line 184
    add-int/lit8 v7, v6, 0x1

    .line 185
    .line 186
    shr-int/lit8 v8, v0, 0xc

    .line 187
    .line 188
    and-int/2addr v8, v3

    .line 189
    or-int/2addr v8, v1

    .line 190
    int-to-byte v8, v8

    .line 191
    aput-byte v8, v5, v7

    .line 192
    .line 193
    add-int/lit8 v7, v6, 0x2

    .line 194
    .line 195
    shr-int/lit8 v8, v0, 0x6

    .line 196
    .line 197
    and-int/2addr v8, v3

    .line 198
    or-int/2addr v8, v1

    .line 199
    int-to-byte v8, v8

    .line 200
    aput-byte v8, v5, v7

    .line 201
    .line 202
    add-int/lit8 v7, v6, 0x3

    .line 203
    .line 204
    and-int/2addr v0, v3

    .line 205
    or-int/2addr v0, v1

    .line 206
    int-to-byte v0, v0

    .line 207
    aput-byte v0, v5, v7

    .line 208
    .line 209
    add-int/2addr v6, v2

    .line 210
    iput v6, v4, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 211
    .line 212
    invoke-virtual {p0}, Lokio/Buffer;->Kk()J

    .line 213
    .line 214
    .line 215
    move-result-wide v0

    .line 216
    const-wide/16 v2, 0x4

    .line 217
    .line 218
    add-long/2addr v0, v2

    .line 219
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->Kkk(J)V

    .line 220
    .line 221
    .line 222
    add-int/lit8 p2, p2, 0x2

    .line 223
    .line 224
    goto/16 :goto_0

    .line 225
    .line 226
    :cond_5
    invoke-virtual {p0, v3}, Lokio/Buffer;->Illllllllllllllllllllll(I)Lokio/Buffer;

    .line 227
    .line 228
    .line 229
    move p2, v2

    .line 230
    goto/16 :goto_0

    .line 231
    .line 232
    :cond_6
    :goto_4
    const/4 v2, 0x3

    .line 233
    invoke-virtual {p0, v2}, Lokio/Buffer;->Illllllllllllllllllllllllll(I)Lokio/Segment;

    .line 234
    .line 235
    .line 236
    move-result-object v4

    .line 237
    iget-object v5, v4, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[B

    .line 238
    .line 239
    iget v6, v4, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 240
    .line 241
    shr-int/lit8 v7, v0, 0xc

    .line 242
    .line 243
    or-int/lit16 v7, v7, 0xe0

    .line 244
    .line 245
    int-to-byte v7, v7

    .line 246
    aput-byte v7, v5, v6

    .line 247
    .line 248
    add-int/lit8 v7, v6, 0x1

    .line 249
    .line 250
    shr-int/lit8 v8, v0, 0x6

    .line 251
    .line 252
    and-int/2addr v3, v8

    .line 253
    or-int/2addr v3, v1

    .line 254
    int-to-byte v3, v3

    .line 255
    aput-byte v3, v5, v7

    .line 256
    .line 257
    add-int/lit8 v3, v6, 0x2

    .line 258
    .line 259
    and-int/lit8 v0, v0, 0x3f

    .line 260
    .line 261
    or-int/2addr v0, v1

    .line 262
    int-to-byte v0, v0

    .line 263
    aput-byte v0, v5, v3

    .line 264
    .line 265
    add-int/2addr v6, v2

    .line 266
    iput v6, v4, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 267
    .line 268
    invoke-virtual {p0}, Lokio/Buffer;->Kk()J

    .line 269
    .line 270
    .line 271
    move-result-wide v0

    .line 272
    const-wide/16 v2, 0x3

    .line 273
    .line 274
    add-long/2addr v0, v2

    .line 275
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->Kkk(J)V

    .line 276
    .line 277
    .line 278
    goto/16 :goto_2

    .line 279
    .line 280
    :cond_7
    return-object p0

    .line 281
    :cond_8
    new-instance p2, Ljava/lang/StringBuilder;

    .line 282
    .line 283
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 284
    .line 285
    .line 286
    const-string v0, "endIndex > string.length: "

    .line 287
    .line 288
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    const-string p3, " > "

    .line 295
    .line 296
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 300
    .line 301
    .line 302
    move-result p1

    .line 303
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object p1

    .line 310
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 311
    .line 312
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object p1

    .line 316
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    throw p2

    .line 320
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    .line 321
    .line 322
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 323
    .line 324
    .line 325
    const-string v0, "endIndex < beginIndex: "

    .line 326
    .line 327
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    const-string p3, " < "

    .line 334
    .line 335
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object p1

    .line 345
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 346
    .line 347
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object p1

    .line 351
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    throw p2

    .line 355
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    .line 356
    .line 357
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 358
    .line 359
    .line 360
    const-string p3, "beginIndex < 0: "

    .line 361
    .line 362
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object p1

    .line 372
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 373
    .line 374
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object p1

    .line 378
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    throw p2
.end method

.method public Illlllllllllll(Ljava/lang/String;)Lokio/Buffer;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, p1, v1, v0}, Lokio/Buffer;->Illllllllllll(Ljava/lang/String;II)Lokio/Buffer;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public Illllllllllllll(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/Buffer;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/nio/charset/Charset;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, p1, v1, v0, p2}, Lokio/Buffer;->Illlllllllllllll(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public Illlllllllllllll(Ljava/lang/String;IILjava/nio/charset/Charset;)Lokio/Buffer;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/nio/charset/Charset;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    if-ltz p2, :cond_3

    .line 2
    .line 3
    if-lt p3, p2, :cond_2

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-gt p3, v0, :cond_1

    .line 10
    .line 11
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->Illllllllllll(Ljava/lang/String;II)Lokio/Buffer;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1

    .line 24
    :cond_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1, p4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    array-length p2, p1

    .line 33
    const/4 p3, 0x0

    .line 34
    invoke-virtual {p0, p1, p3, p2}, Lokio/Buffer;->Illlllllllllllllllllllll([BII)Lokio/Buffer;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    return-object p1

    .line 39
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string p4, "endIndex > string.length: "

    .line 45
    .line 46
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string p3, " > "

    .line 53
    .line 54
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p2

    .line 78
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    const-string p4, "endIndex < beginIndex: "

    .line 84
    .line 85
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string p3, " < "

    .line 92
    .line 93
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 104
    .line 105
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw p2

    .line 113
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .line 117
    .line 118
    const-string p3, "beginIndex < 0: "

    .line 119
    .line 120
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 131
    .line 132
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw p2
.end method

.method public Illllllllllllllll(I)Lokio/Buffer;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Lokio/Buffer;->Illllllllllllllllllllllllll(I)Lokio/Segment;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    iget-object v2, v1, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[B

    .line 7
    .line 8
    iget v3, v1, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 9
    .line 10
    add-int/lit8 v4, v3, 0x1

    .line 11
    .line 12
    ushr-int/lit8 v5, p1, 0x8

    .line 13
    .line 14
    and-int/lit16 v5, v5, 0xff

    .line 15
    .line 16
    int-to-byte v5, v5

    .line 17
    aput-byte v5, v2, v3

    .line 18
    .line 19
    add-int/2addr v3, v0

    .line 20
    and-int/lit16 p1, p1, 0xff

    .line 21
    .line 22
    int-to-byte p1, p1

    .line 23
    aput-byte p1, v2, v4

    .line 24
    .line 25
    iput v3, v1, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 26
    .line 27
    invoke-virtual {p0}, Lokio/Buffer;->Kk()J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    const-wide/16 v2, 0x2

    .line 32
    .line 33
    add-long/2addr v0, v2

    .line 34
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->Kkk(J)V

    .line 35
    .line 36
    .line 37
    return-object p0
.end method

.method public Illlllllllllllllll(J)Lokio/Buffer;
    .locals 11
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lokio/Buffer;->Illllllllllllllllllllllllll(I)Lokio/Segment;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, v1, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[B

    .line 8
    .line 9
    iget v3, v1, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 10
    .line 11
    add-int/lit8 v4, v3, 0x1

    .line 12
    .line 13
    const/16 v5, 0x38

    .line 14
    .line 15
    ushr-long v5, p1, v5

    .line 16
    .line 17
    const-wide/16 v7, 0xff

    .line 18
    .line 19
    and-long/2addr v5, v7

    .line 20
    long-to-int v5, v5

    .line 21
    int-to-byte v5, v5

    .line 22
    aput-byte v5, v2, v3

    .line 23
    .line 24
    add-int/lit8 v5, v3, 0x2

    .line 25
    .line 26
    const/16 v6, 0x30

    .line 27
    .line 28
    ushr-long v9, p1, v6

    .line 29
    .line 30
    and-long/2addr v9, v7

    .line 31
    long-to-int v6, v9

    .line 32
    int-to-byte v6, v6

    .line 33
    aput-byte v6, v2, v4

    .line 34
    .line 35
    add-int/lit8 v4, v3, 0x3

    .line 36
    .line 37
    const/16 v6, 0x28

    .line 38
    .line 39
    ushr-long v9, p1, v6

    .line 40
    .line 41
    and-long/2addr v9, v7

    .line 42
    long-to-int v6, v9

    .line 43
    int-to-byte v6, v6

    .line 44
    aput-byte v6, v2, v5

    .line 45
    .line 46
    add-int/lit8 v5, v3, 0x4

    .line 47
    .line 48
    const/16 v6, 0x20

    .line 49
    .line 50
    ushr-long v9, p1, v6

    .line 51
    .line 52
    and-long/2addr v9, v7

    .line 53
    long-to-int v6, v9

    .line 54
    int-to-byte v6, v6

    .line 55
    aput-byte v6, v2, v4

    .line 56
    .line 57
    add-int/lit8 v4, v3, 0x5

    .line 58
    .line 59
    const/16 v6, 0x18

    .line 60
    .line 61
    ushr-long v9, p1, v6

    .line 62
    .line 63
    and-long/2addr v9, v7

    .line 64
    long-to-int v6, v9

    .line 65
    int-to-byte v6, v6

    .line 66
    aput-byte v6, v2, v5

    .line 67
    .line 68
    add-int/lit8 v5, v3, 0x6

    .line 69
    .line 70
    const/16 v6, 0x10

    .line 71
    .line 72
    ushr-long v9, p1, v6

    .line 73
    .line 74
    and-long/2addr v9, v7

    .line 75
    long-to-int v6, v9

    .line 76
    int-to-byte v6, v6

    .line 77
    aput-byte v6, v2, v4

    .line 78
    .line 79
    add-int/lit8 v4, v3, 0x7

    .line 80
    .line 81
    ushr-long v9, p1, v0

    .line 82
    .line 83
    and-long/2addr v9, v7

    .line 84
    long-to-int v6, v9

    .line 85
    int-to-byte v6, v6

    .line 86
    aput-byte v6, v2, v5

    .line 87
    .line 88
    add-int/2addr v3, v0

    .line 89
    and-long/2addr p1, v7

    .line 90
    long-to-int p1, p1

    .line 91
    int-to-byte p1, p1

    .line 92
    aput-byte p1, v2, v4

    .line 93
    .line 94
    iput v3, v1, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 95
    .line 96
    invoke-virtual {p0}, Lokio/Buffer;->Kk()J

    .line 97
    .line 98
    .line 99
    move-result-wide p1

    .line 100
    const-wide/16 v0, 0x8

    .line 101
    .line 102
    add-long/2addr p1, v0

    .line 103
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->Kkk(J)V

    .line 104
    .line 105
    .line 106
    return-object p0
.end method

.method public Illllllllllllllllll(I)Lokio/Buffer;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p1}, Lokio/-SegmentedByteString;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0, p1}, Lokio/Buffer;->Illlllllllllllllllll(I)Lokio/Buffer;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public Illlllllllllllllllll(I)Lokio/Buffer;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0}, Lokio/Buffer;->Illllllllllllllllllllllllll(I)Lokio/Segment;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    iget-object v2, v1, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[B

    .line 7
    .line 8
    iget v3, v1, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 9
    .line 10
    add-int/lit8 v4, v3, 0x1

    .line 11
    .line 12
    ushr-int/lit8 v5, p1, 0x18

    .line 13
    .line 14
    and-int/lit16 v5, v5, 0xff

    .line 15
    .line 16
    int-to-byte v5, v5

    .line 17
    aput-byte v5, v2, v3

    .line 18
    .line 19
    add-int/lit8 v5, v3, 0x2

    .line 20
    .line 21
    ushr-int/lit8 v6, p1, 0x10

    .line 22
    .line 23
    and-int/lit16 v6, v6, 0xff

    .line 24
    .line 25
    int-to-byte v6, v6

    .line 26
    aput-byte v6, v2, v4

    .line 27
    .line 28
    add-int/lit8 v4, v3, 0x3

    .line 29
    .line 30
    ushr-int/lit8 v6, p1, 0x8

    .line 31
    .line 32
    and-int/lit16 v6, v6, 0xff

    .line 33
    .line 34
    int-to-byte v6, v6

    .line 35
    aput-byte v6, v2, v5

    .line 36
    .line 37
    add-int/2addr v3, v0

    .line 38
    and-int/lit16 p1, p1, 0xff

    .line 39
    .line 40
    int-to-byte p1, p1

    .line 41
    aput-byte p1, v2, v4

    .line 42
    .line 43
    iput v3, v1, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 44
    .line 45
    invoke-virtual {p0}, Lokio/Buffer;->Kk()J

    .line 46
    .line 47
    .line 48
    move-result-wide v0

    .line 49
    const-wide/16 v2, 0x4

    .line 50
    .line 51
    add-long/2addr v0, v2

    .line 52
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->Kkk(J)V

    .line 53
    .line 54
    .line 55
    return-object p0
.end method

.method public Illllllllllllllllllll(J)Lokio/Buffer;
    .locals 12
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/16 p1, 0x30

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lokio/Buffer;->Illllllllllllllllllllll(I)Lokio/Buffer;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    const/4 v0, 0x1

    .line 15
    ushr-long v1, p1, v0

    .line 16
    .line 17
    or-long/2addr v1, p1

    .line 18
    const/4 v3, 0x2

    .line 19
    ushr-long v4, v1, v3

    .line 20
    .line 21
    or-long/2addr v1, v4

    .line 22
    const/4 v4, 0x4

    .line 23
    ushr-long v5, v1, v4

    .line 24
    .line 25
    or-long/2addr v1, v5

    .line 26
    const/16 v5, 0x8

    .line 27
    .line 28
    ushr-long v6, v1, v5

    .line 29
    .line 30
    or-long/2addr v1, v6

    .line 31
    const/16 v6, 0x10

    .line 32
    .line 33
    ushr-long v7, v1, v6

    .line 34
    .line 35
    or-long/2addr v1, v7

    .line 36
    const/16 v7, 0x20

    .line 37
    .line 38
    ushr-long v8, v1, v7

    .line 39
    .line 40
    or-long/2addr v1, v8

    .line 41
    ushr-long v8, v1, v0

    .line 42
    .line 43
    const-wide v10, 0x5555555555555555L    # 1.1945305291614955E103

    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    and-long/2addr v8, v10

    .line 49
    sub-long/2addr v1, v8

    .line 50
    ushr-long v8, v1, v3

    .line 51
    .line 52
    const-wide v10, 0x3333333333333333L    # 4.667261458395856E-62

    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    and-long/2addr v8, v10

    .line 58
    and-long/2addr v1, v10

    .line 59
    add-long/2addr v8, v1

    .line 60
    ushr-long v1, v8, v4

    .line 61
    .line 62
    add-long/2addr v1, v8

    .line 63
    const-wide v8, 0xf0f0f0f0f0f0f0fL    # 3.815736827118017E-236

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    and-long/2addr v1, v8

    .line 69
    ushr-long v8, v1, v5

    .line 70
    .line 71
    add-long/2addr v1, v8

    .line 72
    ushr-long v5, v1, v6

    .line 73
    .line 74
    add-long/2addr v1, v5

    .line 75
    const-wide/16 v5, 0x3f

    .line 76
    .line 77
    and-long v8, v1, v5

    .line 78
    .line 79
    ushr-long/2addr v1, v7

    .line 80
    and-long/2addr v1, v5

    .line 81
    add-long/2addr v8, v1

    .line 82
    const/4 v1, 0x3

    .line 83
    int-to-long v1, v1

    .line 84
    add-long/2addr v8, v1

    .line 85
    int-to-long v1, v4

    .line 86
    div-long/2addr v8, v1

    .line 87
    long-to-int v1, v8

    .line 88
    invoke-virtual {p0, v1}, Lokio/Buffer;->Illllllllllllllllllllllllll(I)Lokio/Segment;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    iget-object v3, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[B

    .line 93
    .line 94
    iget v5, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 95
    .line 96
    add-int v6, v5, v1

    .line 97
    .line 98
    sub-int/2addr v6, v0

    .line 99
    :goto_0
    if-lt v6, v5, :cond_1

    .line 100
    .line 101
    invoke-static {}, Lokio/internal/-Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()[B

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    const-wide/16 v7, 0xf

    .line 106
    .line 107
    and-long/2addr v7, p1

    .line 108
    long-to-int v7, v7

    .line 109
    aget-byte v0, v0, v7

    .line 110
    .line 111
    aput-byte v0, v3, v6

    .line 112
    .line 113
    ushr-long/2addr p1, v4

    .line 114
    add-int/lit8 v6, v6, -0x1

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_1
    iget p1, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 118
    .line 119
    add-int/2addr p1, v1

    .line 120
    iput p1, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 121
    .line 122
    invoke-virtual {p0}, Lokio/Buffer;->Kk()J

    .line 123
    .line 124
    .line 125
    move-result-wide p1

    .line 126
    int-to-long v0, v1

    .line 127
    add-long/2addr p1, v0

    .line 128
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->Kkk(J)V

    .line 129
    .line 130
    .line 131
    return-object p0
.end method

.method public Illlllllllllllllllllll(J)Lokio/Buffer;
    .locals 12
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    const/16 p1, 0x30

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lokio/Buffer;->Illllllllllllllllllllll(I)Lokio/Buffer;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    const/4 v3, 0x1

    .line 15
    if-gez v2, :cond_2

    .line 16
    .line 17
    neg-long p1, p1

    .line 18
    cmp-long v2, p1, v0

    .line 19
    .line 20
    if-gez v2, :cond_1

    .line 21
    .line 22
    const-string p1, "-9223372036854775808"

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lokio/Buffer;->Illlllllllllll(Ljava/lang/String;)Lokio/Buffer;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1

    .line 29
    :cond_1
    move v2, v3

    .line 30
    goto :goto_0

    .line 31
    :cond_2
    const/4 v2, 0x0

    .line 32
    :goto_0
    const-wide/32 v4, 0x5f5e100

    .line 33
    .line 34
    .line 35
    cmp-long v4, p1, v4

    .line 36
    .line 37
    const/16 v5, 0xa

    .line 38
    .line 39
    if-gez v4, :cond_a

    .line 40
    .line 41
    const-wide/16 v6, 0x2710

    .line 42
    .line 43
    cmp-long v4, p1, v6

    .line 44
    .line 45
    if-gez v4, :cond_6

    .line 46
    .line 47
    const-wide/16 v6, 0x64

    .line 48
    .line 49
    cmp-long v4, p1, v6

    .line 50
    .line 51
    if-gez v4, :cond_4

    .line 52
    .line 53
    const-wide/16 v6, 0xa

    .line 54
    .line 55
    cmp-long v4, p1, v6

    .line 56
    .line 57
    if-gez v4, :cond_3

    .line 58
    .line 59
    goto/16 :goto_1

    .line 60
    .line 61
    :cond_3
    const/4 v3, 0x2

    .line 62
    goto/16 :goto_1

    .line 63
    .line 64
    :cond_4
    const-wide/16 v3, 0x3e8

    .line 65
    .line 66
    cmp-long v3, p1, v3

    .line 67
    .line 68
    if-gez v3, :cond_5

    .line 69
    .line 70
    const/4 v3, 0x3

    .line 71
    goto/16 :goto_1

    .line 72
    .line 73
    :cond_5
    const/4 v3, 0x4

    .line 74
    goto/16 :goto_1

    .line 75
    .line 76
    :cond_6
    const-wide/32 v3, 0xf4240

    .line 77
    .line 78
    .line 79
    cmp-long v3, p1, v3

    .line 80
    .line 81
    if-gez v3, :cond_8

    .line 82
    .line 83
    const-wide/32 v3, 0x186a0

    .line 84
    .line 85
    .line 86
    cmp-long v3, p1, v3

    .line 87
    .line 88
    if-gez v3, :cond_7

    .line 89
    .line 90
    const/4 v3, 0x5

    .line 91
    goto/16 :goto_1

    .line 92
    .line 93
    :cond_7
    const/4 v3, 0x6

    .line 94
    goto/16 :goto_1

    .line 95
    .line 96
    :cond_8
    const-wide/32 v3, 0x989680

    .line 97
    .line 98
    .line 99
    cmp-long v3, p1, v3

    .line 100
    .line 101
    if-gez v3, :cond_9

    .line 102
    .line 103
    const/4 v3, 0x7

    .line 104
    goto/16 :goto_1

    .line 105
    .line 106
    :cond_9
    const/16 v3, 0x8

    .line 107
    .line 108
    goto/16 :goto_1

    .line 109
    .line 110
    :cond_a
    const-wide v3, 0xe8d4a51000L

    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    cmp-long v3, p1, v3

    .line 116
    .line 117
    if-gez v3, :cond_e

    .line 118
    .line 119
    const-wide v3, 0x2540be400L

    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    cmp-long v3, p1, v3

    .line 125
    .line 126
    if-gez v3, :cond_c

    .line 127
    .line 128
    const-wide/32 v3, 0x3b9aca00

    .line 129
    .line 130
    .line 131
    cmp-long v3, p1, v3

    .line 132
    .line 133
    if-gez v3, :cond_b

    .line 134
    .line 135
    const/16 v3, 0x9

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_b
    move v3, v5

    .line 139
    goto :goto_1

    .line 140
    :cond_c
    const-wide v3, 0x174876e800L

    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    cmp-long v3, p1, v3

    .line 146
    .line 147
    if-gez v3, :cond_d

    .line 148
    .line 149
    const/16 v3, 0xb

    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_d
    const/16 v3, 0xc

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_e
    const-wide v3, 0x38d7ea4c68000L

    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    cmp-long v3, p1, v3

    .line 161
    .line 162
    if-gez v3, :cond_11

    .line 163
    .line 164
    const-wide v3, 0x9184e72a000L

    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    cmp-long v3, p1, v3

    .line 170
    .line 171
    if-gez v3, :cond_f

    .line 172
    .line 173
    const/16 v3, 0xd

    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_f
    const-wide v3, 0x5af3107a4000L

    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    cmp-long v3, p1, v3

    .line 182
    .line 183
    if-gez v3, :cond_10

    .line 184
    .line 185
    const/16 v3, 0xe

    .line 186
    .line 187
    goto :goto_1

    .line 188
    :cond_10
    const/16 v3, 0xf

    .line 189
    .line 190
    goto :goto_1

    .line 191
    :cond_11
    const-wide v3, 0x16345785d8a0000L

    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    cmp-long v3, p1, v3

    .line 197
    .line 198
    if-gez v3, :cond_13

    .line 199
    .line 200
    const-wide v3, 0x2386f26fc10000L

    .line 201
    .line 202
    .line 203
    .line 204
    .line 205
    cmp-long v3, p1, v3

    .line 206
    .line 207
    if-gez v3, :cond_12

    .line 208
    .line 209
    const/16 v3, 0x10

    .line 210
    .line 211
    goto :goto_1

    .line 212
    :cond_12
    const/16 v3, 0x11

    .line 213
    .line 214
    goto :goto_1

    .line 215
    :cond_13
    const-wide v3, 0xde0b6b3a7640000L

    .line 216
    .line 217
    .line 218
    .line 219
    .line 220
    cmp-long v3, p1, v3

    .line 221
    .line 222
    if-gez v3, :cond_14

    .line 223
    .line 224
    const/16 v3, 0x12

    .line 225
    .line 226
    goto :goto_1

    .line 227
    :cond_14
    const/16 v3, 0x13

    .line 228
    .line 229
    :goto_1
    if-eqz v2, :cond_15

    .line 230
    .line 231
    add-int/lit8 v3, v3, 0x1

    .line 232
    .line 233
    :cond_15
    invoke-virtual {p0, v3}, Lokio/Buffer;->Illllllllllllllllllllllllll(I)Lokio/Segment;

    .line 234
    .line 235
    .line 236
    move-result-object v4

    .line 237
    iget-object v6, v4, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[B

    .line 238
    .line 239
    iget v7, v4, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 240
    .line 241
    add-int/2addr v7, v3

    .line 242
    :goto_2
    cmp-long v8, p1, v0

    .line 243
    .line 244
    if-eqz v8, :cond_16

    .line 245
    .line 246
    int-to-long v8, v5

    .line 247
    rem-long v10, p1, v8

    .line 248
    .line 249
    long-to-int v10, v10

    .line 250
    add-int/lit8 v7, v7, -0x1

    .line 251
    .line 252
    invoke-static {}, Lokio/internal/-Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()[B

    .line 253
    .line 254
    .line 255
    move-result-object v11

    .line 256
    aget-byte v10, v11, v10

    .line 257
    .line 258
    aput-byte v10, v6, v7

    .line 259
    .line 260
    div-long/2addr p1, v8

    .line 261
    goto :goto_2

    .line 262
    :cond_16
    if-eqz v2, :cond_17

    .line 263
    .line 264
    add-int/lit8 v7, v7, -0x1

    .line 265
    .line 266
    const/16 p1, 0x2d

    .line 267
    .line 268
    aput-byte p1, v6, v7

    .line 269
    .line 270
    :cond_17
    iget p1, v4, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 271
    .line 272
    add-int/2addr p1, v3

    .line 273
    iput p1, v4, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 274
    .line 275
    invoke-virtual {p0}, Lokio/Buffer;->Kk()J

    .line 276
    .line 277
    .line 278
    move-result-wide p1

    .line 279
    int-to-long v0, v3

    .line 280
    add-long/2addr p1, v0

    .line 281
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->Kkk(J)V

    .line 282
    .line 283
    .line 284
    return-object p0
.end method

.method public Illllllllllllllllllllll(I)Lokio/Buffer;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lokio/Buffer;->Illllllllllllllllllllllllll(I)Lokio/Segment;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    iget-object v1, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[B

    .line 7
    .line 8
    iget v2, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 9
    .line 10
    add-int/lit8 v3, v2, 0x1

    .line 11
    .line 12
    iput v3, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 13
    .line 14
    int-to-byte p1, p1

    .line 15
    aput-byte p1, v1, v2

    .line 16
    .line 17
    invoke-virtual {p0}, Lokio/Buffer;->Kk()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    const-wide/16 v2, 0x1

    .line 22
    .line 23
    add-long/2addr v0, v2

    .line 24
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->Kkk(J)V

    .line 25
    .line 26
    .line 27
    return-object p0
.end method

.method public Illlllllllllllllllllllll([BII)Lokio/Buffer;
    .locals 7
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    array-length v0, p1

    .line 2
    int-to-long v1, v0

    .line 3
    int-to-long v3, p2

    .line 4
    int-to-long v5, p3

    .line 5
    invoke-static/range {v1 .. v6}, Lokio/-SegmentedByteString;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JJJ)V

    .line 6
    .line 7
    .line 8
    add-int/2addr p3, p2

    .line 9
    :goto_0
    if-ge p2, p3, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-virtual {p0, v0}, Lokio/Buffer;->Illllllllllllllllllllllllll(I)Lokio/Segment;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sub-int v1, p3, p2

    .line 17
    .line 18
    iget v2, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 19
    .line 20
    rsub-int v2, v2, 0x2000

    .line 21
    .line 22
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    iget-object v2, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[B

    .line 27
    .line 28
    iget v3, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 29
    .line 30
    add-int v4, p2, v1

    .line 31
    .line 32
    invoke-static {p1, v2, v3, p2, v4}, Lkotlin/collections/ArraysKt;->copyInto([B[BIII)[B

    .line 33
    .line 34
    .line 35
    iget p2, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 36
    .line 37
    add-int/2addr p2, v1

    .line 38
    iput p2, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 39
    .line 40
    move p2, v4

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p0}, Lokio/Buffer;->Kk()J

    .line 43
    .line 44
    .line 45
    move-result-wide p1

    .line 46
    add-long/2addr p1, v5

    .line 47
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->Kkk(J)V

    .line 48
    .line 49
    .line 50
    return-object p0
.end method

.method public Illllllllllllllllllllllll([B)Lokio/Buffer;
    .locals 2
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, p1, v1, v0}, Lokio/Buffer;->Illlllllllllllllllllllll([BII)Lokio/Buffer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public Illlllllllllllllllllllllll(Lokio/ByteString;)Lokio/Buffer;
    .locals 2
    .param p1    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1, p0, v1, v0}, Lokio/ByteString;->write$okio(Lokio/Buffer;II)V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public final Illllllllllllllllllllllllll(I)Lokio/Segment;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    if-lt p1, v0, :cond_3

    .line 3
    .line 4
    const/16 v0, 0x2000

    .line 5
    .line 6
    if-gt p1, v0, :cond_3

    .line 7
    .line 8
    iget-object v1, p0, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-static {}, Lokio/SegmentPool;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/Segment;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 17
    .line 18
    iput-object p1, p1, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 19
    .line 20
    iput-object p1, p1, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_0
    iget-object v1, v1, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 24
    .line 25
    iget v2, v1, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 26
    .line 27
    add-int/2addr v2, p1

    .line 28
    if-gt v2, v0, :cond_2

    .line 29
    .line 30
    iget-boolean p1, v1, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 31
    .line 32
    if-nez p1, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    return-object v1

    .line 36
    :cond_2
    :goto_0
    invoke-static {}, Lokio/SegmentPool;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/Segment;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {v1, p1}, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Segment;)Lokio/Segment;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    return-object p1

    .line 45
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 46
    .line 47
    const-string v0, "unexpected capacity"

    .line 48
    .line 49
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1
.end method

.method public final Illlllllllllllllllllllllllll(I)Lokio/ByteString;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    invoke-virtual {p0}, Lokio/Buffer;->Kk()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    const-wide/16 v2, 0x0

    .line 11
    .line 12
    int-to-long v4, p1

    .line 13
    invoke-static/range {v0 .. v5}, Lokio/-SegmentedByteString;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JJJ)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    move v2, v1

    .line 20
    move v3, v2

    .line 21
    :goto_0
    if-ge v2, p1, :cond_2

    .line 22
    .line 23
    iget v4, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 24
    .line 25
    iget v5, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 26
    .line 27
    if-eq v4, v5, :cond_1

    .line 28
    .line 29
    sub-int/2addr v4, v5

    .line 30
    add-int/2addr v2, v4

    .line 31
    add-int/lit8 v3, v3, 0x1

    .line 32
    .line 33
    iget-object v0, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    .line 37
    .line 38
    const-string v0, "s.limit == s.pos"

    .line 39
    .line 40
    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    throw p1

    .line 44
    :cond_2
    new-array v0, v3, [[B

    .line 45
    .line 46
    mul-int/lit8 v2, v3, 0x2

    .line 47
    .line 48
    new-array v2, v2, [I

    .line 49
    .line 50
    iget-object v4, p0, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 51
    .line 52
    move-object v5, v4

    .line 53
    move v4, v1

    .line 54
    :goto_1
    if-ge v1, p1, :cond_3

    .line 55
    .line 56
    iget-object v6, v5, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[B

    .line 57
    .line 58
    aput-object v6, v0, v4

    .line 59
    .line 60
    iget v6, v5, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 61
    .line 62
    iget v7, v5, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 63
    .line 64
    sub-int/2addr v6, v7

    .line 65
    add-int/2addr v1, v6

    .line 66
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    aput v6, v2, v4

    .line 71
    .line 72
    add-int v6, v4, v3

    .line 73
    .line 74
    iget v7, v5, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 75
    .line 76
    aput v7, v2, v6

    .line 77
    .line 78
    const/4 v6, 0x1

    .line 79
    iput-boolean v6, v5, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 80
    .line 81
    add-int/2addr v4, v6

    .line 82
    iget-object v5, v5, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_3
    new-instance p1, Lokio/SegmentedByteString;

    .line 86
    .line 87
    invoke-direct {p1, v0, v2}, Lokio/SegmentedByteString;-><init>([[B[I)V

    .line 88
    .line 89
    .line 90
    return-object p1
.end method

.method public final Illllllllllllllllllllllllllll()Lokio/ByteString;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lokio/Buffer;->Kk()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/32 v2, 0x7fffffff

    .line 6
    .line 7
    .line 8
    cmp-long v0, v0, v2

    .line 9
    .line 10
    if-gtz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lokio/Buffer;->Kk()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    long-to-int v0, v0

    .line 17
    invoke-virtual {p0, v0}, Lokio/Buffer;->Illlllllllllllllllllllllllll(I)Lokio/ByteString;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v1, "size > Int.MAX_VALUE: "

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lokio/Buffer;->Kk()J

    .line 33
    .line 34
    .line 35
    move-result-wide v1

    .line 36
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v1
.end method

.method public final Kk()J
    .locals 2
    .annotation build Lkotlin/jvm/JvmName;
        name = "size"
    .end annotation

    .line 1
    iget-wide v0, p0, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwww:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final Kkk(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwww:J

    .line 2
    .line 3
    return-void
.end method

.method public Kkkk()I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lokio/Buffer;->Kk()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v0, v0, v2

    .line 8
    .line 9
    if-eqz v0, :cond_a

    .line 10
    .line 11
    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->Kkkkkkkkkkkkkkkk(J)B

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    and-int/lit16 v1, v0, 0x80

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    const/16 v3, 0x80

    .line 19
    .line 20
    const v4, 0xfffd

    .line 21
    .line 22
    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    and-int/lit8 v1, v0, 0x7f

    .line 26
    .line 27
    const/4 v5, 0x0

    .line 28
    move v6, v5

    .line 29
    move v5, v2

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    and-int/lit16 v1, v0, 0xe0

    .line 32
    .line 33
    const/16 v5, 0xc0

    .line 34
    .line 35
    if-ne v1, v5, :cond_1

    .line 36
    .line 37
    and-int/lit8 v1, v0, 0x1f

    .line 38
    .line 39
    const/4 v5, 0x2

    .line 40
    move v6, v3

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    and-int/lit16 v1, v0, 0xf0

    .line 43
    .line 44
    const/16 v5, 0xe0

    .line 45
    .line 46
    if-ne v1, v5, :cond_2

    .line 47
    .line 48
    and-int/lit8 v1, v0, 0xf

    .line 49
    .line 50
    const/4 v5, 0x3

    .line 51
    const/16 v6, 0x800

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    and-int/lit16 v1, v0, 0xf8

    .line 55
    .line 56
    const/16 v5, 0xf0

    .line 57
    .line 58
    if-ne v1, v5, :cond_9

    .line 59
    .line 60
    and-int/lit8 v1, v0, 0x7

    .line 61
    .line 62
    const/4 v5, 0x4

    .line 63
    const/high16 v6, 0x10000

    .line 64
    .line 65
    :goto_0
    invoke-virtual {p0}, Lokio/Buffer;->Kk()J

    .line 66
    .line 67
    .line 68
    move-result-wide v7

    .line 69
    int-to-long v9, v5

    .line 70
    cmp-long v7, v7, v9

    .line 71
    .line 72
    if-ltz v7, :cond_8

    .line 73
    .line 74
    :goto_1
    if-ge v2, v5, :cond_4

    .line 75
    .line 76
    int-to-long v7, v2

    .line 77
    invoke-virtual {p0, v7, v8}, Lokio/Buffer;->Kkkkkkkkkkkkkkkk(J)B

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    and-int/lit16 v11, v0, 0xc0

    .line 82
    .line 83
    if-ne v11, v3, :cond_3

    .line 84
    .line 85
    shl-int/lit8 v1, v1, 0x6

    .line 86
    .line 87
    and-int/lit8 v0, v0, 0x3f

    .line 88
    .line 89
    or-int/2addr v1, v0

    .line 90
    add-int/lit8 v2, v2, 0x1

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_3
    invoke-virtual {p0, v7, v8}, Lokio/Buffer;->skip(J)V

    .line 94
    .line 95
    .line 96
    return v4

    .line 97
    :cond_4
    invoke-virtual {p0, v9, v10}, Lokio/Buffer;->skip(J)V

    .line 98
    .line 99
    .line 100
    const v0, 0x10ffff

    .line 101
    .line 102
    .line 103
    if-le v1, v0, :cond_5

    .line 104
    .line 105
    return v4

    .line 106
    :cond_5
    const v0, 0xd800

    .line 107
    .line 108
    .line 109
    if-gt v0, v1, :cond_6

    .line 110
    .line 111
    const v0, 0xe000

    .line 112
    .line 113
    .line 114
    if-ge v1, v0, :cond_6

    .line 115
    .line 116
    return v4

    .line 117
    :cond_6
    if-ge v1, v6, :cond_7

    .line 118
    .line 119
    return v4

    .line 120
    :cond_7
    return v1

    .line 121
    :cond_8
    new-instance v1, Ljava/io/EOFException;

    .line 122
    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .line 127
    .line 128
    const-string v3, "size < "

    .line 129
    .line 130
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v3, ": "

    .line 137
    .line 138
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0}, Lokio/Buffer;->Kk()J

    .line 142
    .line 143
    .line 144
    move-result-wide v3

    .line 145
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string v3, " (to read code point prefixed 0x"

    .line 149
    .line 150
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-static {v0}, Lokio/-SegmentedByteString;->Wwwwwwwwwwwwwwwwwwwwwwww(B)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const/16 v0, 0x29

    .line 161
    .line 162
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-direct {v1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    throw v1

    .line 173
    :cond_9
    const-wide/16 v0, 0x1

    .line 174
    .line 175
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->skip(J)V

    .line 176
    .line 177
    .line 178
    return v4

    .line 179
    :cond_a
    new-instance v0, Ljava/io/EOFException;

    .line 180
    .line 181
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 182
    .line 183
    .line 184
    throw v0
.end method

.method public Kkkkk()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-wide v0, p0, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwww:J

    .line 2
    .line 3
    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1, v2}, Lokio/Buffer;->Kkkkkk(JLjava/nio/charset/Charset;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public Kkkkkk(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 6
    .param p3    # Ljava/nio/charset/Charset;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_4

    .line 6
    .line 7
    const-wide/32 v1, 0x7fffffff

    .line 8
    .line 9
    .line 10
    cmp-long v1, p1, v1

    .line 11
    .line 12
    if-gtz v1, :cond_4

    .line 13
    .line 14
    iget-wide v1, p0, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwww:J

    .line 15
    .line 16
    cmp-long v1, v1, p1

    .line 17
    .line 18
    if-ltz v1, :cond_3

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    const-string p1, ""

    .line 23
    .line 24
    return-object p1

    .line 25
    :cond_0
    iget-object v0, p0, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 26
    .line 27
    iget v1, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 28
    .line 29
    int-to-long v2, v1

    .line 30
    add-long/2addr v2, p1

    .line 31
    iget v4, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 32
    .line 33
    int-to-long v4, v4

    .line 34
    cmp-long v2, v2, v4

    .line 35
    .line 36
    if-lez v2, :cond_1

    .line 37
    .line 38
    new-instance v0, Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwww(J)[B

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-direct {v0, p1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 45
    .line 46
    .line 47
    return-object v0

    .line 48
    :cond_1
    new-instance v2, Ljava/lang/String;

    .line 49
    .line 50
    iget-object v3, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[B

    .line 51
    .line 52
    long-to-int v4, p1

    .line 53
    invoke-direct {v2, v3, v1, v4, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 54
    .line 55
    .line 56
    iget p3, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 57
    .line 58
    add-int/2addr p3, v4

    .line 59
    iput p3, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 60
    .line 61
    iget-wide v3, p0, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwww:J

    .line 62
    .line 63
    sub-long/2addr v3, p1

    .line 64
    iput-wide v3, p0, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwww:J

    .line 65
    .line 66
    iget p1, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 67
    .line 68
    if-ne p3, p1, :cond_2

    .line 69
    .line 70
    invoke-virtual {v0}, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/Segment;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iput-object p1, p0, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 75
    .line 76
    invoke-static {v0}, Lokio/SegmentPool;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Segment;)V

    .line 77
    .line 78
    .line 79
    :cond_2
    return-object v2

    .line 80
    :cond_3
    new-instance p1, Ljava/io/EOFException;

    .line 81
    .line 82
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 83
    .line 84
    .line 85
    throw p1

    .line 86
    :cond_4
    new-instance p3, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string v0, "byteCount: "

    .line 92
    .line 93
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 104
    .line 105
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw p2
.end method

.method public final Kkkkkkkk(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;
    .locals 0
    .param p1    # Lokio/Buffer$UnsafeCursor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lokio/internal/-Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Buffer;Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public Kkkkkkkkk(JLokio/ByteString;II)Z
    .locals 6
    .param p3    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-ltz v0, :cond_3

    .line 7
    .line 8
    if-ltz p4, :cond_3

    .line 9
    .line 10
    if-ltz p5, :cond_3

    .line 11
    .line 12
    invoke-virtual {p0}, Lokio/Buffer;->Kk()J

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    sub-long/2addr v2, p1

    .line 17
    int-to-long v4, p5

    .line 18
    cmp-long v0, v2, v4

    .line 19
    .line 20
    if-ltz v0, :cond_3

    .line 21
    .line 22
    invoke-virtual {p3}, Lokio/ByteString;->size()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    sub-int/2addr v0, p4

    .line 27
    if-ge v0, p5, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    move v0, v1

    .line 31
    :goto_0
    if-ge v0, p5, :cond_2

    .line 32
    .line 33
    int-to-long v2, v0

    .line 34
    add-long/2addr v2, p1

    .line 35
    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->Kkkkkkkkkkkkkkkk(J)B

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    add-int v3, p4, v0

    .line 40
    .line 41
    invoke-virtual {p3, v3}, Lokio/ByteString;->getByte(I)B

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eq v2, v3, :cond_1

    .line 46
    .line 47
    return v1

    .line 48
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const/4 p1, 0x1

    .line 52
    return p1

    .line 53
    :cond_3
    :goto_1
    return v1
.end method

.method public Kkkkkkkkkk(JLokio/ByteString;)Z
    .locals 6
    .param p3    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p3}, Lokio/ByteString;->size()I

    .line 2
    .line 3
    .line 4
    move-result v5

    .line 5
    const/4 v4, 0x0

    .line 6
    move-object v0, p0

    .line 7
    move-wide v1, p1

    .line 8
    move-object v3, p3

    .line 9
    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->Kkkkkkkkk(JLokio/ByteString;II)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public Kkkkkkkkkkk(Lokio/ByteString;J)J
    .locals 11
    .param p1    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p2, v0

    .line 4
    .line 5
    if-ltz v2, :cond_13

    .line 6
    .line 7
    iget-object v2, p0, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 8
    .line 9
    const-wide/16 v3, -0x1

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    return-wide v3

    .line 14
    :cond_0
    invoke-virtual {p0}, Lokio/Buffer;->Kk()J

    .line 15
    .line 16
    .line 17
    move-result-wide v5

    .line 18
    sub-long/2addr v5, p2

    .line 19
    cmp-long v5, v5, p2

    .line 20
    .line 21
    const/4 v6, 0x2

    .line 22
    const/4 v7, 0x0

    .line 23
    const/4 v8, 0x1

    .line 24
    if-gez v5, :cond_a

    .line 25
    .line 26
    invoke-virtual {p0}, Lokio/Buffer;->Kk()J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    :goto_0
    cmp-long v5, v0, p2

    .line 31
    .line 32
    if-lez v5, :cond_1

    .line 33
    .line 34
    iget-object v2, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 35
    .line 36
    iget v5, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 37
    .line 38
    iget v9, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 39
    .line 40
    sub-int/2addr v5, v9

    .line 41
    int-to-long v9, v5

    .line 42
    sub-long/2addr v0, v9

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-ne v5, v6, :cond_5

    .line 49
    .line 50
    invoke-virtual {p1, v7}, Lokio/ByteString;->getByte(I)B

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    invoke-virtual {p1, v8}, Lokio/ByteString;->getByte(I)B

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    :goto_1
    invoke-virtual {p0}, Lokio/Buffer;->Kk()J

    .line 59
    .line 60
    .line 61
    move-result-wide v6

    .line 62
    cmp-long v6, v0, v6

    .line 63
    .line 64
    if-gez v6, :cond_9

    .line 65
    .line 66
    iget-object v6, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[B

    .line 67
    .line 68
    iget v7, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 69
    .line 70
    int-to-long v7, v7

    .line 71
    add-long/2addr v7, p2

    .line 72
    sub-long/2addr v7, v0

    .line 73
    long-to-int p2, v7

    .line 74
    iget p3, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 75
    .line 76
    :goto_2
    if-ge p2, p3, :cond_4

    .line 77
    .line 78
    aget-byte v7, v6, p2

    .line 79
    .line 80
    if-eq v7, v5, :cond_3

    .line 81
    .line 82
    if-ne v7, p1, :cond_2

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_2
    add-int/lit8 p2, p2, 0x1

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_3
    :goto_3
    iget p1, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 89
    .line 90
    :goto_4
    sub-int/2addr p2, p1

    .line 91
    int-to-long p1, p2

    .line 92
    add-long/2addr p1, v0

    .line 93
    return-wide p1

    .line 94
    :cond_4
    iget p2, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 95
    .line 96
    iget p3, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 97
    .line 98
    sub-int/2addr p2, p3

    .line 99
    int-to-long p2, p2

    .line 100
    add-long/2addr v0, p2

    .line 101
    iget-object v2, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 102
    .line 103
    move-wide p2, v0

    .line 104
    goto :goto_1

    .line 105
    :cond_5
    invoke-virtual {p1}, Lokio/ByteString;->internalArray$okio()[B

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    :goto_5
    invoke-virtual {p0}, Lokio/Buffer;->Kk()J

    .line 110
    .line 111
    .line 112
    move-result-wide v5

    .line 113
    cmp-long v5, v0, v5

    .line 114
    .line 115
    if-gez v5, :cond_9

    .line 116
    .line 117
    iget-object v5, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[B

    .line 118
    .line 119
    iget v6, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 120
    .line 121
    int-to-long v8, v6

    .line 122
    add-long/2addr v8, p2

    .line 123
    sub-long/2addr v8, v0

    .line 124
    long-to-int p2, v8

    .line 125
    iget p3, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 126
    .line 127
    :goto_6
    if-ge p2, p3, :cond_8

    .line 128
    .line 129
    aget-byte v6, v5, p2

    .line 130
    .line 131
    array-length v8, p1

    .line 132
    move v9, v7

    .line 133
    :goto_7
    if-ge v9, v8, :cond_7

    .line 134
    .line 135
    aget-byte v10, p1, v9

    .line 136
    .line 137
    if-ne v6, v10, :cond_6

    .line 138
    .line 139
    :goto_8
    iget p1, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 140
    .line 141
    goto :goto_4

    .line 142
    :cond_6
    add-int/lit8 v9, v9, 0x1

    .line 143
    .line 144
    goto :goto_7

    .line 145
    :cond_7
    add-int/lit8 p2, p2, 0x1

    .line 146
    .line 147
    goto :goto_6

    .line 148
    :cond_8
    iget p2, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 149
    .line 150
    iget p3, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 151
    .line 152
    sub-int/2addr p2, p3

    .line 153
    int-to-long p2, p2

    .line 154
    add-long/2addr v0, p2

    .line 155
    iget-object v2, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 156
    .line 157
    move-wide p2, v0

    .line 158
    goto :goto_5

    .line 159
    :cond_9
    return-wide v3

    .line 160
    :cond_a
    :goto_9
    iget v5, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 161
    .line 162
    iget v9, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 163
    .line 164
    sub-int/2addr v5, v9

    .line 165
    int-to-long v9, v5

    .line 166
    add-long/2addr v9, v0

    .line 167
    cmp-long v5, v9, p2

    .line 168
    .line 169
    if-gtz v5, :cond_b

    .line 170
    .line 171
    iget-object v2, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 172
    .line 173
    move-wide v0, v9

    .line 174
    goto :goto_9

    .line 175
    :cond_b
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    .line 176
    .line 177
    .line 178
    move-result v5

    .line 179
    if-ne v5, v6, :cond_e

    .line 180
    .line 181
    invoke-virtual {p1, v7}, Lokio/ByteString;->getByte(I)B

    .line 182
    .line 183
    .line 184
    move-result v5

    .line 185
    invoke-virtual {p1, v8}, Lokio/ByteString;->getByte(I)B

    .line 186
    .line 187
    .line 188
    move-result p1

    .line 189
    :goto_a
    invoke-virtual {p0}, Lokio/Buffer;->Kk()J

    .line 190
    .line 191
    .line 192
    move-result-wide v6

    .line 193
    cmp-long v6, v0, v6

    .line 194
    .line 195
    if-gez v6, :cond_12

    .line 196
    .line 197
    iget-object v6, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[B

    .line 198
    .line 199
    iget v7, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 200
    .line 201
    int-to-long v7, v7

    .line 202
    add-long/2addr v7, p2

    .line 203
    sub-long/2addr v7, v0

    .line 204
    long-to-int p2, v7

    .line 205
    iget p3, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 206
    .line 207
    :goto_b
    if-ge p2, p3, :cond_d

    .line 208
    .line 209
    aget-byte v7, v6, p2

    .line 210
    .line 211
    if-eq v7, v5, :cond_3

    .line 212
    .line 213
    if-ne v7, p1, :cond_c

    .line 214
    .line 215
    goto :goto_3

    .line 216
    :cond_c
    add-int/lit8 p2, p2, 0x1

    .line 217
    .line 218
    goto :goto_b

    .line 219
    :cond_d
    iget p2, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 220
    .line 221
    iget p3, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 222
    .line 223
    sub-int/2addr p2, p3

    .line 224
    int-to-long p2, p2

    .line 225
    add-long/2addr v0, p2

    .line 226
    iget-object v2, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 227
    .line 228
    move-wide p2, v0

    .line 229
    goto :goto_a

    .line 230
    :cond_e
    invoke-virtual {p1}, Lokio/ByteString;->internalArray$okio()[B

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    :goto_c
    invoke-virtual {p0}, Lokio/Buffer;->Kk()J

    .line 235
    .line 236
    .line 237
    move-result-wide v5

    .line 238
    cmp-long v5, v0, v5

    .line 239
    .line 240
    if-gez v5, :cond_12

    .line 241
    .line 242
    iget-object v5, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[B

    .line 243
    .line 244
    iget v6, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 245
    .line 246
    int-to-long v8, v6

    .line 247
    add-long/2addr v8, p2

    .line 248
    sub-long/2addr v8, v0

    .line 249
    long-to-int p2, v8

    .line 250
    iget p3, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 251
    .line 252
    :goto_d
    if-ge p2, p3, :cond_11

    .line 253
    .line 254
    aget-byte v6, v5, p2

    .line 255
    .line 256
    array-length v8, p1

    .line 257
    move v9, v7

    .line 258
    :goto_e
    if-ge v9, v8, :cond_10

    .line 259
    .line 260
    aget-byte v10, p1, v9

    .line 261
    .line 262
    if-ne v6, v10, :cond_f

    .line 263
    .line 264
    goto :goto_8

    .line 265
    :cond_f
    add-int/lit8 v9, v9, 0x1

    .line 266
    .line 267
    goto :goto_e

    .line 268
    :cond_10
    add-int/lit8 p2, p2, 0x1

    .line 269
    .line 270
    goto :goto_d

    .line 271
    :cond_11
    iget p2, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 272
    .line 273
    iget p3, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 274
    .line 275
    sub-int/2addr p2, p3

    .line 276
    int-to-long p2, p2

    .line 277
    add-long/2addr v0, p2

    .line 278
    iget-object v2, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 279
    .line 280
    move-wide p2, v0

    .line 281
    goto :goto_c

    .line 282
    :cond_12
    return-wide v3

    .line 283
    :cond_13
    new-instance p1, Ljava/lang/StringBuilder;

    .line 284
    .line 285
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 286
    .line 287
    .line 288
    const-string v0, "fromIndex < 0: "

    .line 289
    .line 290
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object p1

    .line 300
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 301
    .line 302
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object p1

    .line 306
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    throw p2
.end method

.method public Kkkkkkkkkkkk(Lokio/ByteString;)J
    .locals 2
    .param p1    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->Kkkkkkkkkkk(Lokio/ByteString;J)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public Kkkkkkkkkkkkk(Lokio/ByteString;J)J
    .locals 18
    .param p1    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-wide/from16 v0, p2

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->size()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-lez v2, :cond_d

    .line 8
    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    cmp-long v4, v0, v2

    .line 12
    .line 13
    if-ltz v4, :cond_c

    .line 14
    .line 15
    move-object/from16 v4, p0

    .line 16
    .line 17
    iget-object v5, v4, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 18
    .line 19
    const-wide/16 v6, -0x1

    .line 20
    .line 21
    if-nez v5, :cond_0

    .line 22
    .line 23
    return-wide v6

    .line 24
    :cond_0
    invoke-virtual {v4}, Lokio/Buffer;->Kk()J

    .line 25
    .line 26
    .line 27
    move-result-wide v8

    .line 28
    sub-long/2addr v8, v0

    .line 29
    cmp-long v8, v8, v0

    .line 30
    .line 31
    const-wide/16 v9, 0x1

    .line 32
    .line 33
    const/4 v11, 0x0

    .line 34
    if-gez v8, :cond_6

    .line 35
    .line 36
    invoke-virtual {v4}, Lokio/Buffer;->Kk()J

    .line 37
    .line 38
    .line 39
    move-result-wide v2

    .line 40
    :goto_0
    cmp-long v8, v2, v0

    .line 41
    .line 42
    if-lez v8, :cond_1

    .line 43
    .line 44
    iget-object v5, v5, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 45
    .line 46
    iget v8, v5, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 47
    .line 48
    iget v13, v5, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 49
    .line 50
    sub-int/2addr v8, v13

    .line 51
    int-to-long v13, v8

    .line 52
    sub-long/2addr v2, v13

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->internalArray$okio()[B

    .line 55
    .line 56
    .line 57
    move-result-object v8

    .line 58
    aget-byte v11, v8, v11

    .line 59
    .line 60
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->size()I

    .line 61
    .line 62
    .line 63
    move-result v13

    .line 64
    invoke-virtual {v4}, Lokio/Buffer;->Kk()J

    .line 65
    .line 66
    .line 67
    move-result-wide v14

    .line 68
    move-wide/from16 v16, v6

    .line 69
    .line 70
    int-to-long v6, v13

    .line 71
    sub-long/2addr v14, v6

    .line 72
    add-long/2addr v14, v9

    .line 73
    :goto_1
    cmp-long v6, v2, v14

    .line 74
    .line 75
    if-gez v6, :cond_5

    .line 76
    .line 77
    iget-object v6, v5, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[B

    .line 78
    .line 79
    iget v7, v5, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 80
    .line 81
    iget v9, v5, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 82
    .line 83
    int-to-long v9, v9

    .line 84
    add-long/2addr v9, v14

    .line 85
    sub-long/2addr v9, v2

    .line 86
    move/from16 p1, v13

    .line 87
    .line 88
    int-to-long v12, v7

    .line 89
    invoke-static {v12, v13, v9, v10}, Ljava/lang/Math;->min(JJ)J

    .line 90
    .line 91
    .line 92
    move-result-wide v9

    .line 93
    long-to-int v7, v9

    .line 94
    iget v9, v5, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 95
    .line 96
    int-to-long v9, v9

    .line 97
    add-long/2addr v9, v0

    .line 98
    sub-long/2addr v9, v2

    .line 99
    long-to-int v0, v9

    .line 100
    :goto_2
    if-ge v0, v7, :cond_4

    .line 101
    .line 102
    aget-byte v1, v6, v0

    .line 103
    .line 104
    if-ne v1, v11, :cond_2

    .line 105
    .line 106
    add-int/lit8 v1, v0, 0x1

    .line 107
    .line 108
    move/from16 v10, p1

    .line 109
    .line 110
    const/4 v9, 0x1

    .line 111
    invoke-static {v5, v1, v8, v9, v10}, Lokio/internal/-Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Segment;I[BII)Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-eqz v1, :cond_3

    .line 116
    .line 117
    iget v1, v5, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 118
    .line 119
    sub-int/2addr v0, v1

    .line 120
    int-to-long v0, v0

    .line 121
    :goto_3
    add-long/2addr v0, v2

    .line 122
    return-wide v0

    .line 123
    :cond_2
    move/from16 v10, p1

    .line 124
    .line 125
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 126
    .line 127
    move/from16 p1, v10

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_4
    move/from16 v10, p1

    .line 131
    .line 132
    iget v0, v5, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 133
    .line 134
    iget v1, v5, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 135
    .line 136
    sub-int/2addr v0, v1

    .line 137
    int-to-long v0, v0

    .line 138
    add-long/2addr v2, v0

    .line 139
    iget-object v5, v5, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 140
    .line 141
    move-wide v0, v2

    .line 142
    move v13, v10

    .line 143
    goto :goto_1

    .line 144
    :cond_5
    return-wide v16

    .line 145
    :cond_6
    move-wide/from16 v16, v6

    .line 146
    .line 147
    :goto_4
    iget v6, v5, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 148
    .line 149
    iget v7, v5, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 150
    .line 151
    sub-int/2addr v6, v7

    .line 152
    int-to-long v6, v6

    .line 153
    add-long/2addr v6, v2

    .line 154
    cmp-long v8, v6, v0

    .line 155
    .line 156
    if-gtz v8, :cond_7

    .line 157
    .line 158
    iget-object v5, v5, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 159
    .line 160
    move-wide v2, v6

    .line 161
    goto :goto_4

    .line 162
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->internalArray$okio()[B

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    aget-byte v7, v6, v11

    .line 167
    .line 168
    invoke-virtual/range {p1 .. p1}, Lokio/ByteString;->size()I

    .line 169
    .line 170
    .line 171
    move-result v8

    .line 172
    invoke-virtual {v4}, Lokio/Buffer;->Kk()J

    .line 173
    .line 174
    .line 175
    move-result-wide v11

    .line 176
    int-to-long v13, v8

    .line 177
    sub-long/2addr v11, v13

    .line 178
    add-long/2addr v11, v9

    .line 179
    :goto_5
    cmp-long v9, v2, v11

    .line 180
    .line 181
    if-gez v9, :cond_b

    .line 182
    .line 183
    iget-object v9, v5, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[B

    .line 184
    .line 185
    iget v10, v5, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 186
    .line 187
    iget v13, v5, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 188
    .line 189
    int-to-long v13, v13

    .line 190
    add-long/2addr v13, v11

    .line 191
    sub-long/2addr v13, v2

    .line 192
    move-wide/from16 p1, v0

    .line 193
    .line 194
    int-to-long v0, v10

    .line 195
    invoke-static {v0, v1, v13, v14}, Ljava/lang/Math;->min(JJ)J

    .line 196
    .line 197
    .line 198
    move-result-wide v0

    .line 199
    long-to-int v0, v0

    .line 200
    iget v1, v5, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 201
    .line 202
    int-to-long v13, v1

    .line 203
    add-long v13, v13, p1

    .line 204
    .line 205
    sub-long/2addr v13, v2

    .line 206
    long-to-int v1, v13

    .line 207
    :goto_6
    if-ge v1, v0, :cond_a

    .line 208
    .line 209
    aget-byte v10, v9, v1

    .line 210
    .line 211
    if-ne v10, v7, :cond_8

    .line 212
    .line 213
    add-int/lit8 v10, v1, 0x1

    .line 214
    .line 215
    const/4 v13, 0x1

    .line 216
    invoke-static {v5, v10, v6, v13, v8}, Lokio/internal/-Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Segment;I[BII)Z

    .line 217
    .line 218
    .line 219
    move-result v10

    .line 220
    if-eqz v10, :cond_9

    .line 221
    .line 222
    iget v0, v5, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 223
    .line 224
    sub-int/2addr v1, v0

    .line 225
    int-to-long v0, v1

    .line 226
    goto :goto_3

    .line 227
    :cond_8
    const/4 v13, 0x1

    .line 228
    :cond_9
    add-int/lit8 v1, v1, 0x1

    .line 229
    .line 230
    goto :goto_6

    .line 231
    :cond_a
    const/4 v13, 0x1

    .line 232
    iget v0, v5, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 233
    .line 234
    iget v1, v5, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 235
    .line 236
    sub-int/2addr v0, v1

    .line 237
    int-to-long v0, v0

    .line 238
    add-long/2addr v2, v0

    .line 239
    iget-object v5, v5, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 240
    .line 241
    move-wide v0, v2

    .line 242
    goto :goto_5

    .line 243
    :cond_b
    return-wide v16

    .line 244
    :cond_c
    move-object/from16 v4, p0

    .line 245
    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    .line 247
    .line 248
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 249
    .line 250
    .line 251
    const-string v3, "fromIndex < 0: "

    .line 252
    .line 253
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 264
    .line 265
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    throw v1

    .line 273
    :cond_d
    move-object/from16 v4, p0

    .line 274
    .line 275
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 276
    .line 277
    const-string v1, "bytes is empty"

    .line 278
    .line 279
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    throw v0
.end method

.method public Kkkkkkkkkkkkkk(Lokio/ByteString;)J
    .locals 2
    .param p1    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->Kkkkkkkkkkkkk(Lokio/ByteString;J)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public Kkkkkkkkkkkkkkk(BJJ)J
    .locals 10

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, v0, p2

    .line 4
    .line 5
    if-gtz v2, :cond_c

    .line 6
    .line 7
    cmp-long v2, p2, p4

    .line 8
    .line 9
    if-gtz v2, :cond_c

    .line 10
    .line 11
    invoke-virtual {p0}, Lokio/Buffer;->Kk()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    cmp-long v2, p4, v2

    .line 16
    .line 17
    if-lez v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lokio/Buffer;->Kk()J

    .line 20
    .line 21
    .line 22
    move-result-wide p4

    .line 23
    :cond_0
    cmp-long v2, p2, p4

    .line 24
    .line 25
    const-wide/16 v3, -0x1

    .line 26
    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    return-wide v3

    .line 30
    :cond_1
    iget-object v2, p0, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 31
    .line 32
    if-nez v2, :cond_2

    .line 33
    .line 34
    return-wide v3

    .line 35
    :cond_2
    invoke-virtual {p0}, Lokio/Buffer;->Kk()J

    .line 36
    .line 37
    .line 38
    move-result-wide v5

    .line 39
    sub-long/2addr v5, p2

    .line 40
    cmp-long v5, v5, p2

    .line 41
    .line 42
    if-gez v5, :cond_7

    .line 43
    .line 44
    invoke-virtual {p0}, Lokio/Buffer;->Kk()J

    .line 45
    .line 46
    .line 47
    move-result-wide v0

    .line 48
    :goto_0
    cmp-long v5, v0, p2

    .line 49
    .line 50
    if-lez v5, :cond_3

    .line 51
    .line 52
    iget-object v2, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 53
    .line 54
    iget v5, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 55
    .line 56
    iget v6, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 57
    .line 58
    sub-int/2addr v5, v6

    .line 59
    int-to-long v5, v5

    .line 60
    sub-long/2addr v0, v5

    .line 61
    goto :goto_0

    .line 62
    :cond_3
    :goto_1
    cmp-long v5, v0, p4

    .line 63
    .line 64
    if-gez v5, :cond_6

    .line 65
    .line 66
    iget-object v5, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[B

    .line 67
    .line 68
    iget v6, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 69
    .line 70
    int-to-long v6, v6

    .line 71
    iget v8, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 72
    .line 73
    int-to-long v8, v8

    .line 74
    add-long/2addr v8, p4

    .line 75
    sub-long/2addr v8, v0

    .line 76
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    .line 77
    .line 78
    .line 79
    move-result-wide v6

    .line 80
    long-to-int v6, v6

    .line 81
    iget v7, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 82
    .line 83
    int-to-long v7, v7

    .line 84
    add-long/2addr v7, p2

    .line 85
    sub-long/2addr v7, v0

    .line 86
    long-to-int p2, v7

    .line 87
    :goto_2
    if-ge p2, v6, :cond_5

    .line 88
    .line 89
    aget-byte p3, v5, p2

    .line 90
    .line 91
    if-ne p3, p1, :cond_4

    .line 92
    .line 93
    :goto_3
    iget p1, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 94
    .line 95
    sub-int/2addr p2, p1

    .line 96
    int-to-long p1, p2

    .line 97
    add-long/2addr p1, v0

    .line 98
    return-wide p1

    .line 99
    :cond_4
    add-int/lit8 p2, p2, 0x1

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_5
    iget p2, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 103
    .line 104
    iget p3, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 105
    .line 106
    sub-int/2addr p2, p3

    .line 107
    int-to-long p2, p2

    .line 108
    add-long/2addr v0, p2

    .line 109
    iget-object v2, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 110
    .line 111
    move-wide p2, v0

    .line 112
    goto :goto_1

    .line 113
    :cond_6
    return-wide v3

    .line 114
    :cond_7
    :goto_4
    iget v5, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 115
    .line 116
    iget v6, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 117
    .line 118
    sub-int/2addr v5, v6

    .line 119
    int-to-long v5, v5

    .line 120
    add-long/2addr v5, v0

    .line 121
    cmp-long v7, v5, p2

    .line 122
    .line 123
    if-gtz v7, :cond_8

    .line 124
    .line 125
    iget-object v2, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 126
    .line 127
    move-wide v0, v5

    .line 128
    goto :goto_4

    .line 129
    :cond_8
    :goto_5
    cmp-long v5, v0, p4

    .line 130
    .line 131
    if-gez v5, :cond_b

    .line 132
    .line 133
    iget-object v5, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[B

    .line 134
    .line 135
    iget v6, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 136
    .line 137
    int-to-long v6, v6

    .line 138
    iget v8, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 139
    .line 140
    int-to-long v8, v8

    .line 141
    add-long/2addr v8, p4

    .line 142
    sub-long/2addr v8, v0

    .line 143
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    .line 144
    .line 145
    .line 146
    move-result-wide v6

    .line 147
    long-to-int v6, v6

    .line 148
    iget v7, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 149
    .line 150
    int-to-long v7, v7

    .line 151
    add-long/2addr v7, p2

    .line 152
    sub-long/2addr v7, v0

    .line 153
    long-to-int p2, v7

    .line 154
    :goto_6
    if-ge p2, v6, :cond_a

    .line 155
    .line 156
    aget-byte p3, v5, p2

    .line 157
    .line 158
    if-ne p3, p1, :cond_9

    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_9
    add-int/lit8 p2, p2, 0x1

    .line 162
    .line 163
    goto :goto_6

    .line 164
    :cond_a
    iget p2, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 165
    .line 166
    iget p3, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 167
    .line 168
    sub-int/2addr p2, p3

    .line 169
    int-to-long p2, p2

    .line 170
    add-long/2addr v0, p2

    .line 171
    iget-object v2, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 172
    .line 173
    move-wide p2, v0

    .line 174
    goto :goto_5

    .line 175
    :cond_b
    return-wide v3

    .line 176
    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .line 180
    .line 181
    const-string v0, "size="

    .line 182
    .line 183
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0}, Lokio/Buffer;->Kk()J

    .line 187
    .line 188
    .line 189
    move-result-wide v0

    .line 190
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    const-string v0, " fromIndex="

    .line 194
    .line 195
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    const-string p2, " toIndex="

    .line 202
    .line 203
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 214
    .line 215
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    throw p2
.end method

.method public final Kkkkkkkkkkkkkkkk(J)B
    .locals 7
    .annotation build Lkotlin/jvm/JvmName;
        name = "getByte"
    .end annotation

    .line 1
    invoke-virtual {p0}, Lokio/Buffer;->Kk()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v4, 0x1

    .line 6
    .line 7
    move-wide v2, p1

    .line 8
    invoke-static/range {v0 .. v5}, Lokio/-SegmentedByteString;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JJJ)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lokio/Buffer;->Kk()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    sub-long/2addr v0, v2

    .line 21
    cmp-long p2, v0, v2

    .line 22
    .line 23
    if-gez p2, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Lokio/Buffer;->Kk()J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    :goto_0
    cmp-long p2, v0, v2

    .line 30
    .line 31
    if-lez p2, :cond_0

    .line 32
    .line 33
    iget-object p1, p1, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 34
    .line 35
    iget p2, p1, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 36
    .line 37
    iget v4, p1, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 38
    .line 39
    sub-int/2addr p2, v4

    .line 40
    int-to-long v4, p2

    .line 41
    sub-long/2addr v0, v4

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget-object p2, p1, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[B

    .line 44
    .line 45
    iget p1, p1, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 46
    .line 47
    int-to-long v4, p1

    .line 48
    add-long/2addr v4, v2

    .line 49
    sub-long/2addr v4, v0

    .line 50
    long-to-int p1, v4

    .line 51
    aget-byte p1, p2, p1

    .line 52
    .line 53
    return p1

    .line 54
    :cond_1
    const-wide/16 v0, 0x0

    .line 55
    .line 56
    :goto_1
    iget p2, p1, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 57
    .line 58
    iget v4, p1, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 59
    .line 60
    sub-int/2addr p2, v4

    .line 61
    int-to-long v5, p2

    .line 62
    add-long/2addr v5, v0

    .line 63
    cmp-long p2, v5, v2

    .line 64
    .line 65
    if-gtz p2, :cond_2

    .line 66
    .line 67
    iget-object p1, p1, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 68
    .line 69
    move-wide v0, v5

    .line 70
    goto :goto_1

    .line 71
    :cond_2
    iget-object p1, p1, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[B

    .line 72
    .line 73
    int-to-long v4, v4

    .line 74
    add-long/2addr v4, v2

    .line 75
    sub-long/2addr v4, v0

    .line 76
    long-to-int p2, v4

    .line 77
    aget-byte p1, p1, p2

    .line 78
    .line 79
    return p1
.end method

.method public Kkkkkkkkkkkkkkkkk()Lokio/Buffer;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public Kkkkkkkkkkkkkkkkkk()Lokio/Buffer;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public final Kkkkkkkkkkkkkkkkkkk(Lokio/Buffer;JJ)Lokio/Buffer;
    .locals 8
    .param p1    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lokio/Buffer;->Kk()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    move-wide v2, p2

    .line 6
    move-wide v4, p4

    .line 7
    invoke-static/range {v0 .. v5}, Lokio/-SegmentedByteString;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JJJ)V

    .line 8
    .line 9
    .line 10
    const-wide/16 p2, 0x0

    .line 11
    .line 12
    cmp-long p4, v4, p2

    .line 13
    .line 14
    if-nez p4, :cond_0

    .line 15
    .line 16
    goto :goto_3

    .line 17
    :cond_0
    invoke-virtual {p1}, Lokio/Buffer;->Kk()J

    .line 18
    .line 19
    .line 20
    move-result-wide p4

    .line 21
    add-long/2addr p4, v4

    .line 22
    invoke-virtual {p1, p4, p5}, Lokio/Buffer;->Kkk(J)V

    .line 23
    .line 24
    .line 25
    iget-object p4, p0, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 26
    .line 27
    :goto_0
    iget p5, p4, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 28
    .line 29
    iget v0, p4, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 30
    .line 31
    sub-int v1, p5, v0

    .line 32
    .line 33
    int-to-long v6, v1

    .line 34
    cmp-long v1, v2, v6

    .line 35
    .line 36
    if-ltz v1, :cond_1

    .line 37
    .line 38
    sub-int/2addr p5, v0

    .line 39
    int-to-long v0, p5

    .line 40
    sub-long/2addr v2, v0

    .line 41
    iget-object p4, p4, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    move-object v0, p4

    .line 45
    move-wide p4, v4

    .line 46
    :goto_1
    cmp-long v1, p4, p2

    .line 47
    .line 48
    if-lez v1, :cond_3

    .line 49
    .line 50
    invoke-virtual {v0}, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/Segment;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    iget v4, v1, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 55
    .line 56
    long-to-int v2, v2

    .line 57
    add-int/2addr v4, v2

    .line 58
    iput v4, v1, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 59
    .line 60
    long-to-int v2, p4

    .line 61
    add-int/2addr v4, v2

    .line 62
    iget v2, v1, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 63
    .line 64
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    iput v2, v1, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 69
    .line 70
    iget-object v2, p1, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 71
    .line 72
    if-nez v2, :cond_2

    .line 73
    .line 74
    iput-object v1, v1, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 75
    .line 76
    iput-object v1, v1, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 77
    .line 78
    iput-object v1, p1, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_2
    iget-object v2, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 82
    .line 83
    invoke-virtual {v2, v1}, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Segment;)Lokio/Segment;

    .line 84
    .line 85
    .line 86
    :goto_2
    iget v2, v1, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 87
    .line 88
    iget v1, v1, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 89
    .line 90
    sub-int/2addr v2, v1

    .line 91
    int-to-long v1, v2

    .line 92
    sub-long/2addr p4, v1

    .line 93
    iget-object v0, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 94
    .line 95
    move-wide v2, p2

    .line 96
    goto :goto_1

    .line 97
    :cond_3
    :goto_3
    return-object p0
.end method

.method public final Kkkkkkkkkkkkkkkkkkkk()Lokio/Buffer;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lokio/Buffer;

    .line 2
    .line 3
    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lokio/Buffer;->Kk()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    const-wide/16 v3, 0x0

    .line 11
    .line 12
    cmp-long v1, v1, v3

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    iget-object v1, p0, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 18
    .line 19
    invoke-virtual {v1}, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/Segment;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iput-object v2, v0, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 24
    .line 25
    iput-object v2, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 26
    .line 27
    iput-object v2, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 28
    .line 29
    iget-object v3, v1, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 30
    .line 31
    :goto_0
    if-eq v3, v1, :cond_1

    .line 32
    .line 33
    iget-object v4, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 34
    .line 35
    invoke-virtual {v3}, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/Segment;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    invoke-virtual {v4, v5}, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Segment;)Lokio/Segment;

    .line 40
    .line 41
    .line 42
    iget-object v3, v3, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {p0}, Lokio/Buffer;->Kk()J

    .line 46
    .line 47
    .line 48
    move-result-wide v1

    .line 49
    invoke-virtual {v0, v1, v2}, Lokio/Buffer;->Kkk(J)V

    .line 50
    .line 51
    .line 52
    return-object v0
.end method

.method public final Kkkkkkkkkkkkkkkkkkkkk()J
    .locals 5

    .line 1
    invoke-virtual {p0}, Lokio/Buffer;->Kk()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v4, v0, v2

    .line 8
    .line 9
    if-nez v4, :cond_0

    .line 10
    .line 11
    return-wide v2

    .line 12
    :cond_0
    iget-object v2, p0, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 13
    .line 14
    iget-object v2, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 15
    .line 16
    iget v3, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 17
    .line 18
    const/16 v4, 0x2000

    .line 19
    .line 20
    if-ge v3, v4, :cond_1

    .line 21
    .line 22
    iget-boolean v4, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 23
    .line 24
    if-eqz v4, :cond_1

    .line 25
    .line 26
    iget v2, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 27
    .line 28
    sub-int/2addr v3, v2

    .line 29
    int-to-long v2, v3

    .line 30
    sub-long/2addr v0, v2

    .line 31
    :cond_1
    return-wide v0
.end method

.method public Kkkkkkkkkkkkkkkkkkkkkk()Lokio/Buffer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lokio/Buffer;->Kkkkkkkkkkkkkkkkkkkk()Lokio/Buffer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final Kkkkkkkkkkkkkkkkkkkkkkk()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lokio/Buffer;->Kk()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->skip(J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public Kkkkkkkkkkkkkkkkkkkkkkkk(Lokio/Options;)I
    .locals 3
    .param p1    # Lokio/Options;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    invoke-static {p0, p1, v2, v0, v1}, Lokio/internal/-Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Buffer;Lokio/Options;ZILjava/lang/Object;)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, -0x1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    return v1

    .line 12
    :cond_0
    invoke-virtual {p1}, Lokio/Options;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()[Lokio/ByteString;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    aget-object p1, p1, v0

    .line 17
    .line 18
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    int-to-long v1, p1

    .line 23
    invoke-virtual {p0, v1, v2}, Lokio/Buffer;->skip(J)V

    .line 24
    .line 25
    .line 26
    return v0
.end method

.method public Kkkkkkkkkkkkkkkkkkkkkkkkk()Ljava/io/InputStream;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lokio/Buffer$inputStream$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lokio/Buffer$inputStream$1;-><init>(Lokio/Buffer;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public Kkkkkkkkkkkkkkkkkkkkkkkkkk()J
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lokio/Buffer;->Kk()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v0, v0, v2

    .line 8
    .line 9
    if-eqz v0, :cond_9

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    move v1, v0

    .line 13
    move-wide v4, v2

    .line 14
    :cond_0
    iget-object v6, p0, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 15
    .line 16
    iget-object v7, v6, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[B

    .line 17
    .line 18
    iget v8, v6, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 19
    .line 20
    iget v9, v6, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 21
    .line 22
    :goto_0
    if-ge v8, v9, :cond_6

    .line 23
    .line 24
    aget-byte v10, v7, v8

    .line 25
    .line 26
    const/16 v11, 0x30

    .line 27
    .line 28
    if-lt v10, v11, :cond_1

    .line 29
    .line 30
    const/16 v11, 0x39

    .line 31
    .line 32
    if-gt v10, v11, :cond_1

    .line 33
    .line 34
    add-int/lit8 v11, v10, -0x30

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    const/16 v11, 0x61

    .line 38
    .line 39
    if-lt v10, v11, :cond_2

    .line 40
    .line 41
    const/16 v11, 0x66

    .line 42
    .line 43
    if-gt v10, v11, :cond_2

    .line 44
    .line 45
    add-int/lit8 v11, v10, -0x57

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_2
    const/16 v11, 0x41

    .line 49
    .line 50
    if-lt v10, v11, :cond_4

    .line 51
    .line 52
    const/16 v11, 0x46

    .line 53
    .line 54
    if-gt v10, v11, :cond_4

    .line 55
    .line 56
    add-int/lit8 v11, v10, -0x37

    .line 57
    .line 58
    :goto_1
    const-wide/high16 v12, -0x1000000000000000L    # -3.105036184601418E231

    .line 59
    .line 60
    and-long/2addr v12, v4

    .line 61
    cmp-long v12, v12, v2

    .line 62
    .line 63
    if-nez v12, :cond_3

    .line 64
    .line 65
    const/4 v10, 0x4

    .line 66
    shl-long/2addr v4, v10

    .line 67
    int-to-long v10, v11

    .line 68
    or-long/2addr v4, v10

    .line 69
    add-int/lit8 v8, v8, 0x1

    .line 70
    .line 71
    add-int/lit8 v0, v0, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    new-instance v0, Lokio/Buffer;

    .line 75
    .line 76
    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v4, v5}, Lokio/Buffer;->Illllllllllllllllllll(J)Lokio/Buffer;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0, v10}, Lokio/Buffer;->Illllllllllllllllllllll(I)Lokio/Buffer;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    new-instance v1, Ljava/lang/NumberFormatException;

    .line 88
    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    const-string v3, "Number too large: "

    .line 95
    .line 96
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Lokio/Buffer;->Kkkkk()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw v1

    .line 114
    :cond_4
    if-eqz v0, :cond_5

    .line 115
    .line 116
    const/4 v1, 0x1

    .line 117
    goto :goto_2

    .line 118
    :cond_5
    new-instance v0, Ljava/lang/NumberFormatException;

    .line 119
    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    const-string v2, "Expected leading [0-9a-fA-F] character but was 0x"

    .line 126
    .line 127
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-static {v10}, Lokio/-SegmentedByteString;->Wwwwwwwwwwwwwwwwwwwwwwww(B)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    throw v0

    .line 145
    :cond_6
    :goto_2
    if-ne v8, v9, :cond_7

    .line 146
    .line 147
    invoke-virtual {v6}, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/Segment;

    .line 148
    .line 149
    .line 150
    move-result-object v7

    .line 151
    iput-object v7, p0, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 152
    .line 153
    invoke-static {v6}, Lokio/SegmentPool;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Segment;)V

    .line 154
    .line 155
    .line 156
    goto :goto_3

    .line 157
    :cond_7
    iput v8, v6, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 158
    .line 159
    :goto_3
    if-nez v1, :cond_8

    .line 160
    .line 161
    iget-object v6, p0, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 162
    .line 163
    if-nez v6, :cond_0

    .line 164
    .line 165
    :cond_8
    invoke-virtual {p0}, Lokio/Buffer;->Kk()J

    .line 166
    .line 167
    .line 168
    move-result-wide v1

    .line 169
    int-to-long v6, v0

    .line 170
    sub-long/2addr v1, v6

    .line 171
    invoke-virtual {p0, v1, v2}, Lokio/Buffer;->Kkk(J)V

    .line 172
    .line 173
    .line 174
    return-wide v4

    .line 175
    :cond_9
    new-instance v0, Ljava/io/EOFException;

    .line 176
    .line 177
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 178
    .line 179
    .line 180
    throw v0
.end method

.method public Www()Ljava/io/OutputStream;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lokio/Buffer$outputStream$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lokio/Buffer$outputStream$1;-><init>(Lokio/Buffer;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public Wwww(Lokio/Sink;)J
    .locals 4
    .param p1    # Lokio/Sink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lokio/Buffer;->Kk()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v2, v0, v2

    .line 8
    .line 9
    if-lez v2, :cond_0

    .line 10
    .line 11
    invoke-interface {p1, p0, v0, v1}, Lokio/Sink;->Wwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Buffer;J)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-wide v0
.end method

.method public bridge synthetic Wwwww(Lokio/ByteString;)Lokio/BufferedSink;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lokio/Buffer;->Illlllllllllllllllllllllll(Lokio/ByteString;)Lokio/Buffer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public Wwwwww()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lokio/Buffer;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lokio/-SegmentedByteString;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public Wwwwwww()Lokio/ByteString;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lokio/Buffer;->Kk()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->Wwwwwwwwwwwwwww(J)Lokio/ByteString;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public bridge synthetic Wwwwwwww(J)Lokio/BufferedSink;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->Illllllllllllllllllll(J)Lokio/Buffer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public Wwwwwwwwww(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/nio/charset/Charset;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-wide v0, p0, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwww:J

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1, p1}, Lokio/Buffer;->Kkkkkk(JLjava/nio/charset/Charset;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public Wwwwwwwwwww()J
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual {v0}, Lokio/Buffer;->Kk()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    const-wide/16 v3, 0x0

    .line 8
    .line 9
    cmp-long v1, v1, v3

    .line 10
    .line 11
    if-eqz v1, :cond_e

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    const-wide/16 v5, -0x7

    .line 15
    .line 16
    move v2, v1

    .line 17
    move-wide v8, v3

    .line 18
    move-wide v6, v5

    .line 19
    move v5, v2

    .line 20
    :goto_0
    iget-object v10, v0, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 21
    .line 22
    iget-object v11, v10, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[B

    .line 23
    .line 24
    iget v12, v10, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 25
    .line 26
    iget v13, v10, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 27
    .line 28
    :goto_1
    if-ge v12, v13, :cond_5

    .line 29
    .line 30
    aget-byte v15, v11, v12

    .line 31
    .line 32
    const/16 v14, 0x30

    .line 33
    .line 34
    if-lt v15, v14, :cond_3

    .line 35
    .line 36
    const/16 v14, 0x39

    .line 37
    .line 38
    if-gt v15, v14, :cond_3

    .line 39
    .line 40
    rsub-int/lit8 v14, v15, 0x30

    .line 41
    .line 42
    const-wide v16, -0xcccccccccccccccL

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    cmp-long v16, v8, v16

    .line 48
    .line 49
    if-ltz v16, :cond_1

    .line 50
    .line 51
    move-wide/from16 v17, v3

    .line 52
    .line 53
    if-nez v16, :cond_0

    .line 54
    .line 55
    int-to-long v3, v14

    .line 56
    cmp-long v3, v3, v6

    .line 57
    .line 58
    if-gez v3, :cond_0

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_0
    const-wide/16 v3, 0xa

    .line 62
    .line 63
    mul-long/2addr v8, v3

    .line 64
    int-to-long v3, v14

    .line 65
    add-long/2addr v8, v3

    .line 66
    goto :goto_3

    .line 67
    :cond_1
    :goto_2
    new-instance v1, Lokio/Buffer;

    .line 68
    .line 69
    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v8, v9}, Lokio/Buffer;->Illlllllllllllllllllll(J)Lokio/Buffer;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v1, v15}, Lokio/Buffer;->Illllllllllllllllllllll(I)Lokio/Buffer;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    if-nez v2, :cond_2

    .line 81
    .line 82
    invoke-virtual {v1}, Lokio/Buffer;->readByte()B

    .line 83
    .line 84
    .line 85
    :cond_2
    new-instance v2, Ljava/lang/NumberFormatException;

    .line 86
    .line 87
    new-instance v3, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    const-string v4, "Number too large: "

    .line 93
    .line 94
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1}, Lokio/Buffer;->Kkkkk()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-direct {v2, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw v2

    .line 112
    :cond_3
    move-wide/from16 v17, v3

    .line 113
    .line 114
    const/16 v3, 0x2d

    .line 115
    .line 116
    if-ne v15, v3, :cond_4

    .line 117
    .line 118
    if-nez v1, :cond_4

    .line 119
    .line 120
    const-wide/16 v2, 0x1

    .line 121
    .line 122
    sub-long/2addr v6, v2

    .line 123
    const/4 v2, 0x1

    .line 124
    :goto_3
    add-int/lit8 v12, v12, 0x1

    .line 125
    .line 126
    add-int/lit8 v1, v1, 0x1

    .line 127
    .line 128
    move-wide/from16 v3, v17

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_4
    const/4 v5, 0x1

    .line 132
    goto :goto_4

    .line 133
    :cond_5
    move-wide/from16 v17, v3

    .line 134
    .line 135
    :goto_4
    if-ne v12, v13, :cond_6

    .line 136
    .line 137
    invoke-virtual {v10}, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/Segment;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    iput-object v3, v0, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 142
    .line 143
    invoke-static {v10}, Lokio/SegmentPool;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Segment;)V

    .line 144
    .line 145
    .line 146
    goto :goto_5

    .line 147
    :cond_6
    iput v12, v10, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 148
    .line 149
    :goto_5
    if-nez v5, :cond_8

    .line 150
    .line 151
    iget-object v3, v0, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 152
    .line 153
    if-nez v3, :cond_7

    .line 154
    .line 155
    goto :goto_6

    .line 156
    :cond_7
    move-wide/from16 v3, v17

    .line 157
    .line 158
    goto/16 :goto_0

    .line 159
    .line 160
    :cond_8
    :goto_6
    invoke-virtual {v0}, Lokio/Buffer;->Kk()J

    .line 161
    .line 162
    .line 163
    move-result-wide v3

    .line 164
    int-to-long v5, v1

    .line 165
    sub-long/2addr v3, v5

    .line 166
    invoke-virtual {v0, v3, v4}, Lokio/Buffer;->Kkk(J)V

    .line 167
    .line 168
    .line 169
    if-eqz v2, :cond_9

    .line 170
    .line 171
    const/4 v14, 0x2

    .line 172
    goto :goto_7

    .line 173
    :cond_9
    const/4 v14, 0x1

    .line 174
    :goto_7
    if-ge v1, v14, :cond_c

    .line 175
    .line 176
    invoke-virtual {v0}, Lokio/Buffer;->Kk()J

    .line 177
    .line 178
    .line 179
    move-result-wide v3

    .line 180
    cmp-long v1, v3, v17

    .line 181
    .line 182
    if-eqz v1, :cond_b

    .line 183
    .line 184
    if-eqz v2, :cond_a

    .line 185
    .line 186
    const-string v1, "Expected a digit"

    .line 187
    .line 188
    goto :goto_8

    .line 189
    :cond_a
    const-string v1, "Expected a digit or \'-\'"

    .line 190
    .line 191
    :goto_8
    new-instance v2, Ljava/lang/NumberFormatException;

    .line 192
    .line 193
    new-instance v3, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    const-string v1, " but was 0x"

    .line 202
    .line 203
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    move-wide/from16 v4, v17

    .line 207
    .line 208
    invoke-virtual {v0, v4, v5}, Lokio/Buffer;->Kkkkkkkkkkkkkkkk(J)B

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    invoke-static {v1}, Lokio/-SegmentedByteString;->Wwwwwwwwwwwwwwwwwwwwwwww(B)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    invoke-direct {v2, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    throw v2

    .line 227
    :cond_b
    new-instance v1, Ljava/io/EOFException;

    .line 228
    .line 229
    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    .line 230
    .line 231
    .line 232
    throw v1

    .line 233
    :cond_c
    if-eqz v2, :cond_d

    .line 234
    .line 235
    return-wide v8

    .line 236
    :cond_d
    neg-long v1, v8

    .line 237
    return-wide v1

    .line 238
    :cond_e
    new-instance v1, Ljava/io/EOFException;

    .line 239
    .line 240
    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    .line 241
    .line 242
    .line 243
    throw v1
.end method

.method public Wwwwwwwwwwww()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwww:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method public Wwwwwwwwwwwww()[B
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lokio/Buffer;->Kk()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwww(J)[B

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public Wwwwwwwwwwwwwww(J)Lokio/ByteString;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_2

    .line 6
    .line 7
    const-wide/32 v0, 0x7fffffff

    .line 8
    .line 9
    .line 10
    cmp-long v0, p1, v0

    .line 11
    .line 12
    if-gtz v0, :cond_2

    .line 13
    .line 14
    invoke-virtual {p0}, Lokio/Buffer;->Kk()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    cmp-long v0, v0, p1

    .line 19
    .line 20
    if-ltz v0, :cond_1

    .line 21
    .line 22
    const-wide/16 v0, 0x1000

    .line 23
    .line 24
    cmp-long v0, p1, v0

    .line 25
    .line 26
    if-ltz v0, :cond_0

    .line 27
    .line 28
    long-to-int v0, p1

    .line 29
    invoke-virtual {p0, v0}, Lokio/Buffer;->Illlllllllllllllllllllllllll(I)Lokio/ByteString;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->skip(J)V

    .line 34
    .line 35
    .line 36
    return-object v0

    .line 37
    :cond_0
    new-instance v0, Lokio/ByteString;

    .line 38
    .line 39
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwww(J)[B

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-direct {v0, p1}, Lokio/ByteString;-><init>([B)V

    .line 44
    .line 45
    .line 46
    return-object v0

    .line 47
    :cond_1
    new-instance p1, Ljava/io/EOFException;

    .line 48
    .line 49
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 50
    .line 51
    .line 52
    throw p1

    .line 53
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v1, "byteCount: "

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 71
    .line 72
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p2
.end method

.method public Wwwwwwwwwwwwwwww(J)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, v0}, Lokio/Buffer;->Kkkkkk(JLjava/nio/charset/Charset;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public bridge synthetic Wwwwwwwwwwwwwwwww(J)Lokio/BufferedSink;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->Illlllllllllllllllllll(J)Lokio/Buffer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public Wwwwwwwwwwwwwwwwww(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwww:J

    .line 2
    .line 3
    cmp-long p1, v0, p1

    .line 4
    .line 5
    if-ltz p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public Wwwwwwwwwwwwwwwwwww()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lokio/Buffer;->readLong()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Lokio/-SegmentedByteString;->Wwwwwwwwwwwwwwwwwwwwwwwwww(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public Wwwwwwwwwwwwwwwwwwww()S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lokio/Buffer;->readShort()S

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lokio/-SegmentedByteString;->Wwwwwwwwwwwwwwwwwwwwwwwww(S)S

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwww(J)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_1

    .line 6
    .line 7
    const-wide/32 v0, 0x7fffffff

    .line 8
    .line 9
    .line 10
    cmp-long v0, p1, v0

    .line 11
    .line 12
    if-gtz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Lokio/Buffer;->Kk()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    cmp-long v0, v0, p1

    .line 19
    .line 20
    if-ltz v0, :cond_0

    .line 21
    .line 22
    long-to-int p1, p1

    .line 23
    new-array p1, p1, [B

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lokio/Buffer;->readFully([B)V

    .line 26
    .line 27
    .line 28
    return-object p1

    .line 29
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 32
    .line 33
    .line 34
    throw p1

    .line 35
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v1, "byteCount: "

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 53
    .line 54
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p2
.end method

.method public Wwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-wide v0, 0x7fffffffffffffffL

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwww(J)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwww:J

    .line 2
    .line 3
    cmp-long p1, v0, p1

    .line 4
    .line 5
    if-ltz p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    return p1

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    return p1
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwww(Lokio/Source;)J
    .locals 6
    .param p1    # Lokio/Source;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    :goto_0
    const-wide/16 v2, 0x2000

    .line 4
    .line 5
    invoke-interface {p1, p0, v2, v3}, Lokio/Source;->read(Lokio/Buffer;J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    const-wide/16 v4, -0x1

    .line 10
    .line 11
    cmp-long v4, v2, v4

    .line 12
    .line 13
    if-eqz v4, :cond_0

    .line 14
    .line 15
    add-long/2addr v0, v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    return-wide v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Buffer;J)V
    .locals 6
    .param p1    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    if-eq p1, p0, :cond_6

    .line 2
    .line 3
    invoke-virtual {p1}, Lokio/Buffer;->Kk()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    move-wide v4, p2

    .line 10
    invoke-static/range {v0 .. v5}, Lokio/-SegmentedByteString;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JJJ)V

    .line 11
    .line 12
    .line 13
    :goto_0
    const-wide/16 v0, 0x0

    .line 14
    .line 15
    cmp-long v0, p2, v0

    .line 16
    .line 17
    if-lez v0, :cond_5

    .line 18
    .line 19
    iget-object v0, p1, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 20
    .line 21
    iget v1, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 22
    .line 23
    iget v2, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 24
    .line 25
    sub-int/2addr v1, v2

    .line 26
    int-to-long v1, v1

    .line 27
    cmp-long v1, p2, v1

    .line 28
    .line 29
    if-gez v1, :cond_3

    .line 30
    .line 31
    iget-object v1, p0, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 32
    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    iget-object v1, v1, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_0
    const/4 v1, 0x0

    .line 39
    :goto_1
    if-eqz v1, :cond_2

    .line 40
    .line 41
    iget-boolean v2, v1, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 42
    .line 43
    if-eqz v2, :cond_2

    .line 44
    .line 45
    iget v2, v1, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 46
    .line 47
    int-to-long v2, v2

    .line 48
    add-long/2addr v2, p2

    .line 49
    iget-boolean v4, v1, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 50
    .line 51
    if-eqz v4, :cond_1

    .line 52
    .line 53
    const/4 v4, 0x0

    .line 54
    goto :goto_2

    .line 55
    :cond_1
    iget v4, v1, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 56
    .line 57
    :goto_2
    int-to-long v4, v4

    .line 58
    sub-long/2addr v2, v4

    .line 59
    const-wide/16 v4, 0x2000

    .line 60
    .line 61
    cmp-long v2, v2, v4

    .line 62
    .line 63
    if-gtz v2, :cond_2

    .line 64
    .line 65
    long-to-int v2, p2

    .line 66
    invoke-virtual {v0, v1, v2}, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Segment;I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Lokio/Buffer;->Kk()J

    .line 70
    .line 71
    .line 72
    move-result-wide v0

    .line 73
    sub-long/2addr v0, p2

    .line 74
    invoke-virtual {p1, v0, v1}, Lokio/Buffer;->Kkk(J)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lokio/Buffer;->Kk()J

    .line 78
    .line 79
    .line 80
    move-result-wide v0

    .line 81
    add-long/2addr v0, p2

    .line 82
    invoke-virtual {p0, v0, v1}, Lokio/Buffer;->Kkk(J)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_2
    long-to-int v1, p2

    .line 87
    invoke-virtual {v0, v1}, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)Lokio/Segment;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    iput-object v0, p1, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 92
    .line 93
    :cond_3
    iget-object v0, p1, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 94
    .line 95
    iget v1, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 96
    .line 97
    iget v2, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 98
    .line 99
    sub-int/2addr v1, v2

    .line 100
    int-to-long v1, v1

    .line 101
    invoke-virtual {v0}, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/Segment;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    iput-object v3, p1, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 106
    .line 107
    iget-object v3, p0, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 108
    .line 109
    if-nez v3, :cond_4

    .line 110
    .line 111
    iput-object v0, p0, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 112
    .line 113
    iput-object v0, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 114
    .line 115
    iput-object v0, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_4
    iget-object v3, v3, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 119
    .line 120
    invoke-virtual {v3, v0}, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Segment;)Lokio/Segment;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {v0}, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 125
    .line 126
    .line 127
    :goto_3
    invoke-virtual {p1}, Lokio/Buffer;->Kk()J

    .line 128
    .line 129
    .line 130
    move-result-wide v3

    .line 131
    sub-long/2addr v3, v1

    .line 132
    invoke-virtual {p1, v3, v4}, Lokio/Buffer;->Kkk(J)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0}, Lokio/Buffer;->Kk()J

    .line 136
    .line 137
    .line 138
    move-result-wide v3

    .line 139
    add-long/2addr v3, v1

    .line 140
    invoke-virtual {p0, v3, v4}, Lokio/Buffer;->Kkk(J)V

    .line 141
    .line 142
    .line 143
    sub-long/2addr p2, v1

    .line 144
    goto/16 :goto_0

    .line 145
    .line 146
    :cond_5
    return-void

    .line 147
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 148
    .line 149
    const-string p2, "source == this"

    .line 150
    .line 151
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    throw p1
.end method

.method public bridge synthetic Wwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lokio/BufferedSink;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lokio/Buffer;->Illlllllllllll(Ljava/lang/String;)Lokio/Buffer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwww(J)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-ltz v0, :cond_3

    .line 6
    .line 7
    const-wide v0, 0x7fffffffffffffffL

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    cmp-long v2, p1, v0

    .line 13
    .line 14
    const-wide/16 v6, 0x1

    .line 15
    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    :goto_0
    move-wide v4, v0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    add-long v0, p1, v6

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :goto_1
    const/16 v1, 0xa

    .line 24
    .line 25
    const-wide/16 v2, 0x0

    .line 26
    .line 27
    move-object v0, p0

    .line 28
    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->Kkkkkkkkkkkkkkk(BJJ)J

    .line 29
    .line 30
    .line 31
    move-result-wide v1

    .line 32
    const-wide/16 v8, -0x1

    .line 33
    .line 34
    cmp-long v3, v1, v8

    .line 35
    .line 36
    if-eqz v3, :cond_1

    .line 37
    .line 38
    invoke-static {p0, v1, v2}, Lokio/internal/-Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Buffer;J)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    return-object v1

    .line 43
    :cond_1
    invoke-virtual {p0}, Lokio/Buffer;->Kk()J

    .line 44
    .line 45
    .line 46
    move-result-wide v1

    .line 47
    cmp-long v1, v4, v1

    .line 48
    .line 49
    if-gez v1, :cond_2

    .line 50
    .line 51
    sub-long v1, v4, v6

    .line 52
    .line 53
    invoke-virtual {p0, v1, v2}, Lokio/Buffer;->Kkkkkkkkkkkkkkkk(J)B

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    const/16 v2, 0xd

    .line 58
    .line 59
    if-ne v1, v2, :cond_2

    .line 60
    .line 61
    invoke-virtual {p0, v4, v5}, Lokio/Buffer;->Kkkkkkkkkkkkkkkk(J)B

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    const/16 v2, 0xa

    .line 66
    .line 67
    if-ne v1, v2, :cond_2

    .line 68
    .line 69
    invoke-static {p0, v4, v5}, Lokio/internal/-Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Buffer;J)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    return-object v1

    .line 74
    :cond_2
    new-instance v1, Lokio/Buffer;

    .line 75
    .line 76
    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Lokio/Buffer;->Kk()J

    .line 80
    .line 81
    .line 82
    move-result-wide v2

    .line 83
    const/16 v4, 0x20

    .line 84
    .line 85
    int-to-long v4, v4

    .line 86
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 87
    .line 88
    .line 89
    move-result-wide v4

    .line 90
    const-wide/16 v2, 0x0

    .line 91
    .line 92
    move-object v0, p0

    .line 93
    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->Kkkkkkkkkkkkkkkkkkk(Lokio/Buffer;JJ)Lokio/Buffer;

    .line 94
    .line 95
    .line 96
    new-instance v0, Ljava/io/EOFException;

    .line 97
    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    const-string v3, "\\n not found: limit="

    .line 104
    .line 105
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Lokio/Buffer;->Kk()J

    .line 109
    .line 110
    .line 111
    move-result-wide v3

    .line 112
    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->min(JJ)J

    .line 113
    .line 114
    .line 115
    move-result-wide v3

    .line 116
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string v3, " content="

    .line 120
    .line 121
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1}, Lokio/Buffer;->Wwwwwww()Lokio/ByteString;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-virtual {v1}, Lokio/ByteString;->hex()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const/16 v1, 0x2026

    .line 136
    .line 137
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    throw v0

    .line 148
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .line 152
    .line 153
    const-string v1, "limit < 0: "

    .line 154
    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 166
    .line 167
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    throw v1
.end method

.method public bridge synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/BufferedSink;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lokio/Buffer;->Kkkkkkkkkkkkkkkkk()Lokio/Buffer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Buffer;J)V
    .locals 2
    .param p1    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lokio/Buffer;->Kk()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    cmp-long v0, v0, p2

    .line 6
    .line 7
    if-ltz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1, p0, p2, p3}, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Buffer;J)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {p0}, Lokio/Buffer;->Kk()J

    .line 14
    .line 15
    .line 16
    move-result-wide p2

    .line 17
    invoke-virtual {p1, p0, p2, p3}, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Buffer;J)V

    .line 18
    .line 19
    .line 20
    new-instance p1, Ljava/io/EOFException;

    .line 21
    .line 22
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 23
    .line 24
    .line 25
    throw p1
.end method

.method public bridge synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/BufferedSink;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lokio/Buffer;->Kkkkkkkkkkkkkkkkkk()Lokio/Buffer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/Buffer;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/Buffer;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lokio/Buffer;->Kkkkkkkkkkkkkkkkkkkkkk()Lokio/Buffer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public close()V
    .locals 0

    .line 1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 18
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    instance-of v3, v1, Lokio/Buffer;

    .line 10
    .line 11
    const/4 v4, 0x0

    .line 12
    if-nez v3, :cond_1

    .line 13
    .line 14
    return v4

    .line 15
    :cond_1
    invoke-virtual {v0}, Lokio/Buffer;->Kk()J

    .line 16
    .line 17
    .line 18
    move-result-wide v5

    .line 19
    check-cast v1, Lokio/Buffer;

    .line 20
    .line 21
    invoke-virtual {v1}, Lokio/Buffer;->Kk()J

    .line 22
    .line 23
    .line 24
    move-result-wide v7

    .line 25
    cmp-long v3, v5, v7

    .line 26
    .line 27
    if-eqz v3, :cond_2

    .line 28
    .line 29
    return v4

    .line 30
    :cond_2
    invoke-virtual {v0}, Lokio/Buffer;->Kk()J

    .line 31
    .line 32
    .line 33
    move-result-wide v5

    .line 34
    const-wide/16 v7, 0x0

    .line 35
    .line 36
    cmp-long v3, v5, v7

    .line 37
    .line 38
    if-nez v3, :cond_3

    .line 39
    .line 40
    return v2

    .line 41
    :cond_3
    iget-object v3, v0, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 42
    .line 43
    iget-object v1, v1, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 44
    .line 45
    iget v5, v3, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 46
    .line 47
    iget v6, v1, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 48
    .line 49
    move-wide v9, v7

    .line 50
    :goto_0
    invoke-virtual {v0}, Lokio/Buffer;->Kk()J

    .line 51
    .line 52
    .line 53
    move-result-wide v11

    .line 54
    cmp-long v11, v9, v11

    .line 55
    .line 56
    if-gez v11, :cond_8

    .line 57
    .line 58
    iget v11, v3, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 59
    .line 60
    sub-int/2addr v11, v5

    .line 61
    iget v12, v1, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 62
    .line 63
    sub-int/2addr v12, v6

    .line 64
    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    .line 65
    .line 66
    .line 67
    move-result v11

    .line 68
    int-to-long v11, v11

    .line 69
    move-wide v13, v7

    .line 70
    :goto_1
    cmp-long v15, v13, v11

    .line 71
    .line 72
    if-gez v15, :cond_5

    .line 73
    .line 74
    iget-object v15, v3, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[B

    .line 75
    .line 76
    add-int/lit8 v16, v5, 0x1

    .line 77
    .line 78
    aget-byte v5, v15, v5

    .line 79
    .line 80
    iget-object v15, v1, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[B

    .line 81
    .line 82
    add-int/lit8 v17, v6, 0x1

    .line 83
    .line 84
    aget-byte v6, v15, v6

    .line 85
    .line 86
    if-eq v5, v6, :cond_4

    .line 87
    .line 88
    return v4

    .line 89
    :cond_4
    const-wide/16 v5, 0x1

    .line 90
    .line 91
    add-long/2addr v13, v5

    .line 92
    move/from16 v5, v16

    .line 93
    .line 94
    move/from16 v6, v17

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_5
    iget v13, v3, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 98
    .line 99
    if-ne v5, v13, :cond_6

    .line 100
    .line 101
    iget-object v3, v3, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 102
    .line 103
    iget v5, v3, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 104
    .line 105
    :cond_6
    iget v13, v1, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 106
    .line 107
    if-ne v6, v13, :cond_7

    .line 108
    .line 109
    iget-object v1, v1, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 110
    .line 111
    iget v6, v1, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 112
    .line 113
    :cond_7
    add-long/2addr v9, v11

    .line 114
    goto :goto_0

    .line 115
    :cond_8
    return v2
.end method

.method public flush()V
    .locals 0

    .line 1
    return-void
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v1, 0x1

    .line 8
    :cond_1
    iget v2, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 9
    .line 10
    iget v3, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 11
    .line 12
    :goto_0
    if-ge v2, v3, :cond_2

    .line 13
    .line 14
    mul-int/lit8 v1, v1, 0x1f

    .line 15
    .line 16
    iget-object v4, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[B

    .line 17
    .line 18
    aget-byte v4, v4, v2

    .line 19
    .line 20
    add-int/2addr v1, v4

    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    iget-object v0, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 25
    .line 26
    iget-object v2, p0, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 27
    .line 28
    if-ne v0, v2, :cond_1

    .line 29
    .line 30
    return v1
.end method

.method public isOpen()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public peek()Lokio/BufferedSource;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lokio/PeekSource;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lokio/PeekSource;-><init>(Lokio/BufferedSource;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lokio/Okio;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Source;)Lokio/BufferedSource;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 6
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    iget v2, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    iget v3, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3
    iget-object v2, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[B

    iget v3, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 4
    iget p1, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    add-int/2addr p1, v1

    iput p1, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 5
    iget-wide v2, p0, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwww:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwww:J

    .line 6
    iget v2, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    if-ne p1, v2, :cond_1

    .line 7
    invoke-virtual {v0}, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/Segment;

    move-result-object p1

    iput-object p1, p0, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 8
    invoke-static {v0}, Lokio/SegmentPool;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Segment;)V

    :cond_1
    return v1
.end method

.method public read([BII)I
    .locals 7
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 9
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lokio/-SegmentedByteString;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JJJ)V

    .line 10
    iget-object v0, p0, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 11
    :cond_0
    iget v1, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    iget v2, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 12
    iget-object v1, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[B

    .line 13
    iget v2, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    add-int v3, v2, p3

    .line 14
    invoke-static {v1, p1, p2, v2, v3}, Lkotlin/collections/ArraysKt;->copyInto([B[BIII)[B

    .line 15
    iget p1, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    add-int/2addr p1, p3

    iput p1, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 16
    invoke-virtual {p0}, Lokio/Buffer;->Kk()J

    move-result-wide p1

    int-to-long v1, p3

    sub-long/2addr p1, v1

    invoke-virtual {p0, p1, p2}, Lokio/Buffer;->Kkk(J)V

    .line 17
    iget p1, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    iget p2, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    if-ne p1, p2, :cond_1

    .line 18
    invoke-virtual {v0}, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/Segment;

    move-result-object p1

    iput-object p1, p0, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 19
    invoke-static {v0}, Lokio/SegmentPool;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Segment;)V

    :cond_1
    return p3
.end method

.method public read(Lokio/Buffer;J)J
    .locals 4
    .param p1    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_2

    .line 20
    invoke-virtual {p0}, Lokio/Buffer;->Kk()J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const-wide/16 p1, -0x1

    return-wide p1

    .line 21
    :cond_0
    invoke-virtual {p0}, Lokio/Buffer;->Kk()J

    move-result-wide v0

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lokio/Buffer;->Kk()J

    move-result-wide p2

    .line 22
    :cond_1
    invoke-virtual {p1, p0, p2, p3}, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Buffer;J)V

    return-wide p2

    .line 23
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "byteCount < 0: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public readByte()B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lokio/Buffer;->Kk()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v0, v0, v2

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 12
    .line 13
    iget v1, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 14
    .line 15
    iget v2, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 16
    .line 17
    iget-object v3, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[B

    .line 18
    .line 19
    add-int/lit8 v4, v1, 0x1

    .line 20
    .line 21
    aget-byte v1, v3, v1

    .line 22
    .line 23
    invoke-virtual {p0}, Lokio/Buffer;->Kk()J

    .line 24
    .line 25
    .line 26
    move-result-wide v5

    .line 27
    const-wide/16 v7, 0x1

    .line 28
    .line 29
    sub-long/2addr v5, v7

    .line 30
    invoke-virtual {p0, v5, v6}, Lokio/Buffer;->Kkk(J)V

    .line 31
    .line 32
    .line 33
    if-ne v4, v2, :cond_0

    .line 34
    .line 35
    invoke-virtual {v0}, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/Segment;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    iput-object v2, p0, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 40
    .line 41
    invoke-static {v0}, Lokio/SegmentPool;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Segment;)V

    .line 42
    .line 43
    .line 44
    return v1

    .line 45
    :cond_0
    iput v4, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 46
    .line 47
    return v1

    .line 48
    :cond_1
    new-instance v0, Ljava/io/EOFException;

    .line 49
    .line 50
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 51
    .line 52
    .line 53
    throw v0
.end method

.method public readFully([B)V
    .locals 3
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p1

    .line 3
    if-ge v0, v1, :cond_1

    .line 4
    .line 5
    array-length v1, p1

    .line 6
    sub-int/2addr v1, v0

    .line 7
    invoke-virtual {p0, p1, v0, v1}, Lokio/Buffer;->read([BII)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, -0x1

    .line 12
    if-eq v1, v2, :cond_0

    .line 13
    .line 14
    add-int/2addr v0, v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    .line 17
    .line 18
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 19
    .line 20
    .line 21
    throw p1

    .line 22
    :cond_1
    return-void
.end method

.method public readInt()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lokio/Buffer;->Kk()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x4

    .line 6
    .line 7
    cmp-long v0, v0, v2

    .line 8
    .line 9
    if-ltz v0, :cond_2

    .line 10
    .line 11
    iget-object v0, p0, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 12
    .line 13
    iget v1, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 14
    .line 15
    iget v4, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 16
    .line 17
    sub-int v5, v4, v1

    .line 18
    .line 19
    int-to-long v5, v5

    .line 20
    cmp-long v5, v5, v2

    .line 21
    .line 22
    if-gez v5, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    and-int/lit16 v0, v0, 0xff

    .line 29
    .line 30
    shl-int/lit8 v0, v0, 0x18

    .line 31
    .line 32
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    and-int/lit16 v1, v1, 0xff

    .line 37
    .line 38
    shl-int/lit8 v1, v1, 0x10

    .line 39
    .line 40
    or-int/2addr v0, v1

    .line 41
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    and-int/lit16 v1, v1, 0xff

    .line 46
    .line 47
    shl-int/lit8 v1, v1, 0x8

    .line 48
    .line 49
    or-int/2addr v0, v1

    .line 50
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    and-int/lit16 v1, v1, 0xff

    .line 55
    .line 56
    or-int/2addr v0, v1

    .line 57
    return v0

    .line 58
    :cond_0
    iget-object v5, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[B

    .line 59
    .line 60
    add-int/lit8 v6, v1, 0x1

    .line 61
    .line 62
    aget-byte v7, v5, v1

    .line 63
    .line 64
    and-int/lit16 v7, v7, 0xff

    .line 65
    .line 66
    shl-int/lit8 v7, v7, 0x18

    .line 67
    .line 68
    add-int/lit8 v8, v1, 0x2

    .line 69
    .line 70
    aget-byte v6, v5, v6

    .line 71
    .line 72
    and-int/lit16 v6, v6, 0xff

    .line 73
    .line 74
    shl-int/lit8 v6, v6, 0x10

    .line 75
    .line 76
    or-int/2addr v6, v7

    .line 77
    add-int/lit8 v7, v1, 0x3

    .line 78
    .line 79
    aget-byte v8, v5, v8

    .line 80
    .line 81
    and-int/lit16 v8, v8, 0xff

    .line 82
    .line 83
    shl-int/lit8 v8, v8, 0x8

    .line 84
    .line 85
    or-int/2addr v6, v8

    .line 86
    add-int/lit8 v1, v1, 0x4

    .line 87
    .line 88
    aget-byte v5, v5, v7

    .line 89
    .line 90
    and-int/lit16 v5, v5, 0xff

    .line 91
    .line 92
    or-int/2addr v5, v6

    .line 93
    invoke-virtual {p0}, Lokio/Buffer;->Kk()J

    .line 94
    .line 95
    .line 96
    move-result-wide v6

    .line 97
    sub-long/2addr v6, v2

    .line 98
    invoke-virtual {p0, v6, v7}, Lokio/Buffer;->Kkk(J)V

    .line 99
    .line 100
    .line 101
    if-ne v1, v4, :cond_1

    .line 102
    .line 103
    invoke-virtual {v0}, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/Segment;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    iput-object v1, p0, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 108
    .line 109
    invoke-static {v0}, Lokio/SegmentPool;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Segment;)V

    .line 110
    .line 111
    .line 112
    return v5

    .line 113
    :cond_1
    iput v1, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 114
    .line 115
    return v5

    .line 116
    :cond_2
    new-instance v0, Ljava/io/EOFException;

    .line 117
    .line 118
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 119
    .line 120
    .line 121
    throw v0
.end method

.method public readLong()J
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lokio/Buffer;->Kk()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x8

    .line 6
    .line 7
    cmp-long v0, v0, v2

    .line 8
    .line 9
    if-ltz v0, :cond_2

    .line 10
    .line 11
    iget-object v0, p0, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 12
    .line 13
    iget v1, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 14
    .line 15
    iget v4, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 16
    .line 17
    sub-int v5, v4, v1

    .line 18
    .line 19
    int-to-long v5, v5

    .line 20
    cmp-long v5, v5, v2

    .line 21
    .line 22
    const/16 v6, 0x20

    .line 23
    .line 24
    if-gez v5, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Lokio/Buffer;->readInt()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    int-to-long v0, v0

    .line 31
    const-wide v2, 0xffffffffL

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    and-long/2addr v0, v2

    .line 37
    shl-long/2addr v0, v6

    .line 38
    invoke-virtual {p0}, Lokio/Buffer;->readInt()I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    int-to-long v4, v4

    .line 43
    and-long/2addr v2, v4

    .line 44
    or-long/2addr v0, v2

    .line 45
    return-wide v0

    .line 46
    :cond_0
    iget-object v5, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[B

    .line 47
    .line 48
    add-int/lit8 v7, v1, 0x1

    .line 49
    .line 50
    aget-byte v8, v5, v1

    .line 51
    .line 52
    int-to-long v8, v8

    .line 53
    const-wide/16 v10, 0xff

    .line 54
    .line 55
    and-long/2addr v8, v10

    .line 56
    const/16 v12, 0x38

    .line 57
    .line 58
    shl-long/2addr v8, v12

    .line 59
    add-int/lit8 v12, v1, 0x2

    .line 60
    .line 61
    aget-byte v7, v5, v7

    .line 62
    .line 63
    int-to-long v13, v7

    .line 64
    and-long/2addr v13, v10

    .line 65
    const/16 v7, 0x30

    .line 66
    .line 67
    shl-long/2addr v13, v7

    .line 68
    or-long/2addr v8, v13

    .line 69
    add-int/lit8 v7, v1, 0x3

    .line 70
    .line 71
    aget-byte v12, v5, v12

    .line 72
    .line 73
    int-to-long v12, v12

    .line 74
    and-long/2addr v12, v10

    .line 75
    const/16 v14, 0x28

    .line 76
    .line 77
    shl-long/2addr v12, v14

    .line 78
    or-long/2addr v8, v12

    .line 79
    add-int/lit8 v12, v1, 0x4

    .line 80
    .line 81
    aget-byte v7, v5, v7

    .line 82
    .line 83
    int-to-long v13, v7

    .line 84
    and-long/2addr v13, v10

    .line 85
    shl-long v6, v13, v6

    .line 86
    .line 87
    or-long/2addr v6, v8

    .line 88
    add-int/lit8 v8, v1, 0x5

    .line 89
    .line 90
    aget-byte v9, v5, v12

    .line 91
    .line 92
    int-to-long v12, v9

    .line 93
    and-long/2addr v12, v10

    .line 94
    const/16 v9, 0x18

    .line 95
    .line 96
    shl-long/2addr v12, v9

    .line 97
    or-long/2addr v6, v12

    .line 98
    add-int/lit8 v9, v1, 0x6

    .line 99
    .line 100
    aget-byte v8, v5, v8

    .line 101
    .line 102
    int-to-long v12, v8

    .line 103
    and-long/2addr v12, v10

    .line 104
    const/16 v8, 0x10

    .line 105
    .line 106
    shl-long/2addr v12, v8

    .line 107
    or-long/2addr v6, v12

    .line 108
    add-int/lit8 v8, v1, 0x7

    .line 109
    .line 110
    aget-byte v9, v5, v9

    .line 111
    .line 112
    int-to-long v12, v9

    .line 113
    and-long/2addr v12, v10

    .line 114
    const/16 v9, 0x8

    .line 115
    .line 116
    shl-long/2addr v12, v9

    .line 117
    or-long/2addr v6, v12

    .line 118
    add-int/2addr v1, v9

    .line 119
    aget-byte v5, v5, v8

    .line 120
    .line 121
    int-to-long v8, v5

    .line 122
    and-long/2addr v8, v10

    .line 123
    or-long/2addr v6, v8

    .line 124
    invoke-virtual {p0}, Lokio/Buffer;->Kk()J

    .line 125
    .line 126
    .line 127
    move-result-wide v8

    .line 128
    sub-long/2addr v8, v2

    .line 129
    invoke-virtual {p0, v8, v9}, Lokio/Buffer;->Kkk(J)V

    .line 130
    .line 131
    .line 132
    if-ne v1, v4, :cond_1

    .line 133
    .line 134
    invoke-virtual {v0}, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/Segment;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    iput-object v1, p0, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 139
    .line 140
    invoke-static {v0}, Lokio/SegmentPool;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Segment;)V

    .line 141
    .line 142
    .line 143
    return-wide v6

    .line 144
    :cond_1
    iput v1, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 145
    .line 146
    return-wide v6

    .line 147
    :cond_2
    new-instance v0, Ljava/io/EOFException;

    .line 148
    .line 149
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 150
    .line 151
    .line 152
    throw v0
.end method

.method public readShort()S
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lokio/Buffer;->Kk()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x2

    .line 6
    .line 7
    cmp-long v0, v0, v2

    .line 8
    .line 9
    if-ltz v0, :cond_2

    .line 10
    .line 11
    iget-object v0, p0, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 12
    .line 13
    iget v1, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 14
    .line 15
    iget v4, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 16
    .line 17
    sub-int v5, v4, v1

    .line 18
    .line 19
    const/4 v6, 0x2

    .line 20
    if-ge v5, v6, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    and-int/lit16 v0, v0, 0xff

    .line 27
    .line 28
    shl-int/lit8 v0, v0, 0x8

    .line 29
    .line 30
    invoke-virtual {p0}, Lokio/Buffer;->readByte()B

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    and-int/lit16 v1, v1, 0xff

    .line 35
    .line 36
    or-int/2addr v0, v1

    .line 37
    int-to-short v0, v0

    .line 38
    return v0

    .line 39
    :cond_0
    iget-object v5, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[B

    .line 40
    .line 41
    add-int/lit8 v7, v1, 0x1

    .line 42
    .line 43
    aget-byte v8, v5, v1

    .line 44
    .line 45
    and-int/lit16 v8, v8, 0xff

    .line 46
    .line 47
    shl-int/lit8 v8, v8, 0x8

    .line 48
    .line 49
    add-int/2addr v1, v6

    .line 50
    aget-byte v5, v5, v7

    .line 51
    .line 52
    and-int/lit16 v5, v5, 0xff

    .line 53
    .line 54
    or-int/2addr v5, v8

    .line 55
    invoke-virtual {p0}, Lokio/Buffer;->Kk()J

    .line 56
    .line 57
    .line 58
    move-result-wide v6

    .line 59
    sub-long/2addr v6, v2

    .line 60
    invoke-virtual {p0, v6, v7}, Lokio/Buffer;->Kkk(J)V

    .line 61
    .line 62
    .line 63
    if-ne v1, v4, :cond_1

    .line 64
    .line 65
    invoke-virtual {v0}, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/Segment;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    iput-object v1, p0, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 70
    .line 71
    invoke-static {v0}, Lokio/SegmentPool;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Segment;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    iput v1, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 76
    .line 77
    :goto_0
    int-to-short v0, v5

    .line 78
    return v0

    .line 79
    :cond_2
    new-instance v0, Ljava/io/EOFException;

    .line 80
    .line 81
    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    .line 82
    .line 83
    .line 84
    throw v0
.end method

.method public skip(J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    .line 1
    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-lez v0, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget v1, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 12
    .line 13
    iget v2, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 14
    .line 15
    sub-int/2addr v1, v2

    .line 16
    int-to-long v1, v1

    .line 17
    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    long-to-int v1, v1

    .line 22
    invoke-virtual {p0}, Lokio/Buffer;->Kk()J

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    int-to-long v4, v1

    .line 27
    sub-long/2addr v2, v4

    .line 28
    invoke-virtual {p0, v2, v3}, Lokio/Buffer;->Kkk(J)V

    .line 29
    .line 30
    .line 31
    sub-long/2addr p1, v4

    .line 32
    iget v2, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 33
    .line 34
    add-int/2addr v2, v1

    .line 35
    iput v2, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 36
    .line 37
    iget v1, v0, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 38
    .line 39
    if-ne v2, v1, :cond_0

    .line 40
    .line 41
    invoke-virtual {v0}, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/Segment;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iput-object v1, p0, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 46
    .line 47
    invoke-static {v0}, Lokio/SegmentPool;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Segment;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    new-instance p1, Ljava/io/EOFException;

    .line 52
    .line 53
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 54
    .line 55
    .line 56
    throw p1

    .line 57
    :cond_2
    return-void
.end method

.method public timeout()Lokio/Timeout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lokio/Timeout;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Timeout;

    .line 2
    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lokio/Buffer;->Illllllllllllllllllllllllllll()Lokio/ByteString;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lokio/ByteString;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 6
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    move v1, v0

    :goto_0
    if-lez v1, :cond_0

    const/4 v2, 0x1

    .line 4
    invoke-virtual {p0, v2}, Lokio/Buffer;->Illllllllllllllllllllllllll(I)Lokio/Segment;

    move-result-object v2

    .line 5
    iget v3, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    rsub-int v3, v3, 0x2000

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 6
    iget-object v4, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[B

    iget v5, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    invoke-virtual {p1, v4, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v1, v3

    .line 7
    iget v4, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    add-int/2addr v4, v3

    iput v4, v2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    goto :goto_0

    .line 8
    :cond_0
    iget-wide v1, p0, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwww:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwww:J

    return v0
.end method

.method public bridge synthetic write([B)Lokio/BufferedSink;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lokio/Buffer;->Illllllllllllllllllllllll([B)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic write([BII)Lokio/BufferedSink;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lokio/Buffer;->Illlllllllllllllllllllll([BII)Lokio/Buffer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic writeByte(I)Lokio/BufferedSink;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lokio/Buffer;->Illllllllllllllllllllll(I)Lokio/Buffer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic writeInt(I)Lokio/BufferedSink;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lokio/Buffer;->Illlllllllllllllllll(I)Lokio/Buffer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic writeShort(I)Lokio/BufferedSink;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lokio/Buffer;->Illllllllllllllll(I)Lokio/Buffer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
