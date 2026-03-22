.class public final Lokhttp3/internal/http2/Hpack;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http2/Hpack$Reader;,
        Lokhttp3/internal/http2/Hpack$Writer;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0002\u0015\u0016B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0015\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001b\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\t0\u0008H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bR\u001d\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R#\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\t0\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0012\u0010\u000b\u00a8\u0006\u0017"
    }
    d2 = {
        "Lokhttp3/internal/http2/Hpack;",
        "",
        "<init>",
        "()V",
        "Lokio/ByteString;",
        "name",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Lokio/ByteString;)Lokio/ByteString;",
        "",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "()Ljava/util/Map;",
        "",
        "Lokhttp3/internal/http2/Header;",
        "[Lokhttp3/internal/http2/Header;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "()[Lokhttp3/internal/http2/Header;",
        "STATIC_HEADER_TABLE",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Ljava/util/Map;",
        "NAME_TO_FIRST_INDEX",
        "Reader",
        "Writer",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lokhttp3/internal/http2/Hpack;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lokio/ByteString;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[Lokhttp3/internal/http2/Header;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 64

    new-instance v0, Lokhttp3/internal/http2/Hpack;

    invoke-direct {v0}, Lokhttp3/internal/http2/Hpack;-><init>()V

    sput-object v0, Lokhttp3/internal/http2/Hpack;->INSTANCE:Lokhttp3/internal/http2/Hpack;

    .line 1
    new-instance v1, Lokhttp3/internal/http2/Header;

    sget-object v2, Lokhttp3/internal/http2/Header;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/ByteString;

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 2
    new-instance v2, Lokhttp3/internal/http2/Header;

    sget-object v4, Lokhttp3/internal/http2/Header;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/ByteString;

    const-string v5, "GET"

    invoke-direct {v2, v4, v5}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 3
    new-instance v5, Lokhttp3/internal/http2/Header;

    const-string v6, "POST"

    invoke-direct {v5, v4, v6}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 4
    new-instance v4, Lokhttp3/internal/http2/Header;

    sget-object v6, Lokhttp3/internal/http2/Header;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/ByteString;

    const-string v7, "/"

    invoke-direct {v4, v6, v7}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 5
    new-instance v7, Lokhttp3/internal/http2/Header;

    const-string v8, "/index.html"

    invoke-direct {v7, v6, v8}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 6
    new-instance v6, Lokhttp3/internal/http2/Header;

    sget-object v8, Lokhttp3/internal/http2/Header;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/ByteString;

    const-string v9, "http"

    invoke-direct {v6, v8, v9}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 7
    new-instance v9, Lokhttp3/internal/http2/Header;

    const-string v10, "https"

    invoke-direct {v9, v8, v10}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 8
    new-instance v8, Lokhttp3/internal/http2/Header;

    sget-object v10, Lokhttp3/internal/http2/Header;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/ByteString;

    const-string v11, "200"

    invoke-direct {v8, v10, v11}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 9
    new-instance v11, Lokhttp3/internal/http2/Header;

    const-string v12, "204"

    invoke-direct {v11, v10, v12}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 10
    new-instance v12, Lokhttp3/internal/http2/Header;

    const-string v13, "206"

    invoke-direct {v12, v10, v13}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 11
    new-instance v13, Lokhttp3/internal/http2/Header;

    const-string v14, "304"

    invoke-direct {v13, v10, v14}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 12
    new-instance v14, Lokhttp3/internal/http2/Header;

    const-string v15, "400"

    invoke-direct {v14, v10, v15}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 13
    new-instance v15, Lokhttp3/internal/http2/Header;

    move-object/from16 v16, v0

    const-string v0, "404"

    invoke-direct {v15, v10, v0}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 14
    new-instance v0, Lokhttp3/internal/http2/Header;

    move-object/from16 v17, v1

    const-string v1, "500"

    invoke-direct {v0, v10, v1}, Lokhttp3/internal/http2/Header;-><init>(Lokio/ByteString;Ljava/lang/String;)V

    .line 15
    new-instance v1, Lokhttp3/internal/http2/Header;

    const-string v10, "accept-charset"

    invoke-direct {v1, v10, v3}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    new-instance v10, Lokhttp3/internal/http2/Header;

    move-object/from16 v18, v0

    const-string v0, "accept-encoding"

    move-object/from16 v19, v1

    const-string v1, "gzip, deflate"

    invoke-direct {v10, v0, v1}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    new-instance v0, Lokhttp3/internal/http2/Header;

    const-string v1, "accept-language"

    invoke-direct {v0, v1, v3}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    new-instance v1, Lokhttp3/internal/http2/Header;

    move-object/from16 v20, v0

    const-string v0, "accept-ranges"

    invoke-direct {v1, v0, v3}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    new-instance v0, Lokhttp3/internal/http2/Header;

    move-object/from16 v21, v1

    const-string v1, "accept"

    invoke-direct {v0, v1, v3}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    new-instance v1, Lokhttp3/internal/http2/Header;

    move-object/from16 v22, v0

    const-string v0, "access-control-allow-origin"

    invoke-direct {v1, v0, v3}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    new-instance v0, Lokhttp3/internal/http2/Header;

    move-object/from16 v23, v1

    const-string v1, "age"

    invoke-direct {v0, v1, v3}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    new-instance v1, Lokhttp3/internal/http2/Header;

    move-object/from16 v24, v0

    const-string v0, "allow"

    invoke-direct {v1, v0, v3}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    new-instance v0, Lokhttp3/internal/http2/Header;

    move-object/from16 v25, v1

    const-string v1, "authorization"

    invoke-direct {v0, v1, v3}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    new-instance v1, Lokhttp3/internal/http2/Header;

    move-object/from16 v26, v0

    const-string v0, "cache-control"

    invoke-direct {v1, v0, v3}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    new-instance v0, Lokhttp3/internal/http2/Header;

    move-object/from16 v27, v1

    const-string v1, "content-disposition"

    invoke-direct {v0, v1, v3}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    new-instance v1, Lokhttp3/internal/http2/Header;

    move-object/from16 v28, v0

    const-string v0, "content-encoding"

    invoke-direct {v1, v0, v3}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    new-instance v0, Lokhttp3/internal/http2/Header;

    move-object/from16 v29, v1

    const-string v1, "content-language"

    invoke-direct {v0, v1, v3}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    new-instance v1, Lokhttp3/internal/http2/Header;

    move-object/from16 v30, v0

    const-string v0, "content-length"

    invoke-direct {v1, v0, v3}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    new-instance v0, Lokhttp3/internal/http2/Header;

    move-object/from16 v31, v1

    const-string v1, "content-location"

    invoke-direct {v0, v1, v3}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    new-instance v1, Lokhttp3/internal/http2/Header;

    move-object/from16 v32, v0

    const-string v0, "content-range"

    invoke-direct {v1, v0, v3}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    new-instance v0, Lokhttp3/internal/http2/Header;

    move-object/from16 v33, v1

    const-string v1, "content-type"

    invoke-direct {v0, v1, v3}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    new-instance v1, Lokhttp3/internal/http2/Header;

    move-object/from16 v34, v0

    const-string v0, "cookie"

    invoke-direct {v1, v0, v3}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    new-instance v0, Lokhttp3/internal/http2/Header;

    move-object/from16 v35, v1

    const-string v1, "date"

    invoke-direct {v0, v1, v3}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    new-instance v1, Lokhttp3/internal/http2/Header;

    move-object/from16 v36, v0

    const-string v0, "etag"

    invoke-direct {v1, v0, v3}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    new-instance v0, Lokhttp3/internal/http2/Header;

    move-object/from16 v37, v1

    const-string v1, "expect"

    invoke-direct {v0, v1, v3}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    new-instance v1, Lokhttp3/internal/http2/Header;

    move-object/from16 v38, v0

    const-string v0, "expires"

    invoke-direct {v1, v0, v3}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    new-instance v0, Lokhttp3/internal/http2/Header;

    move-object/from16 v39, v1

    const-string v1, "from"

    invoke-direct {v0, v1, v3}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    new-instance v1, Lokhttp3/internal/http2/Header;

    move-object/from16 v40, v0

    const-string v0, "host"

    invoke-direct {v1, v0, v3}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    new-instance v0, Lokhttp3/internal/http2/Header;

    move-object/from16 v41, v1

    const-string v1, "if-match"

    invoke-direct {v0, v1, v3}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    new-instance v1, Lokhttp3/internal/http2/Header;

    move-object/from16 v42, v0

    const-string v0, "if-modified-since"

    invoke-direct {v1, v0, v3}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    new-instance v0, Lokhttp3/internal/http2/Header;

    move-object/from16 v43, v1

    const-string v1, "if-none-match"

    invoke-direct {v0, v1, v3}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    new-instance v1, Lokhttp3/internal/http2/Header;

    move-object/from16 v44, v0

    const-string v0, "if-range"

    invoke-direct {v1, v0, v3}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    new-instance v0, Lokhttp3/internal/http2/Header;

    move-object/from16 v45, v1

    const-string v1, "if-unmodified-since"

    invoke-direct {v0, v1, v3}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    new-instance v1, Lokhttp3/internal/http2/Header;

    move-object/from16 v46, v0

    const-string v0, "last-modified"

    invoke-direct {v1, v0, v3}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    new-instance v0, Lokhttp3/internal/http2/Header;

    move-object/from16 v47, v1

    const-string v1, "link"

    invoke-direct {v0, v1, v3}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance v1, Lokhttp3/internal/http2/Header;

    move-object/from16 v48, v0

    const-string v0, "location"

    invoke-direct {v1, v0, v3}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    new-instance v0, Lokhttp3/internal/http2/Header;

    move-object/from16 v49, v1

    const-string v1, "max-forwards"

    invoke-direct {v0, v1, v3}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    new-instance v1, Lokhttp3/internal/http2/Header;

    move-object/from16 v50, v0

    const-string v0, "proxy-authenticate"

    invoke-direct {v1, v0, v3}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    new-instance v0, Lokhttp3/internal/http2/Header;

    move-object/from16 v51, v1

    const-string v1, "proxy-authorization"

    invoke-direct {v0, v1, v3}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    new-instance v1, Lokhttp3/internal/http2/Header;

    move-object/from16 v52, v0

    const-string v0, "range"

    invoke-direct {v1, v0, v3}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    new-instance v0, Lokhttp3/internal/http2/Header;

    move-object/from16 v53, v1

    const-string v1, "referer"

    invoke-direct {v0, v1, v3}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    new-instance v1, Lokhttp3/internal/http2/Header;

    move-object/from16 v54, v0

    const-string v0, "refresh"

    invoke-direct {v1, v0, v3}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    new-instance v0, Lokhttp3/internal/http2/Header;

    move-object/from16 v55, v1

    const-string v1, "retry-after"

    invoke-direct {v0, v1, v3}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    new-instance v1, Lokhttp3/internal/http2/Header;

    move-object/from16 v56, v0

    const-string v0, "server"

    invoke-direct {v1, v0, v3}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    new-instance v0, Lokhttp3/internal/http2/Header;

    move-object/from16 v57, v1

    const-string v1, "set-cookie"

    invoke-direct {v0, v1, v3}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    new-instance v1, Lokhttp3/internal/http2/Header;

    move-object/from16 v58, v0

    const-string v0, "strict-transport-security"

    invoke-direct {v1, v0, v3}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    new-instance v0, Lokhttp3/internal/http2/Header;

    move-object/from16 v59, v1

    const-string v1, "transfer-encoding"

    invoke-direct {v0, v1, v3}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    new-instance v1, Lokhttp3/internal/http2/Header;

    move-object/from16 v60, v0

    const-string v0, "user-agent"

    invoke-direct {v1, v0, v3}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    new-instance v0, Lokhttp3/internal/http2/Header;

    move-object/from16 v61, v1

    const-string v1, "vary"

    invoke-direct {v0, v1, v3}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    new-instance v1, Lokhttp3/internal/http2/Header;

    move-object/from16 v62, v0

    const-string v0, "via"

    invoke-direct {v1, v0, v3}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    new-instance v0, Lokhttp3/internal/http2/Header;

    move-object/from16 v63, v1

    const-string v1, "www-authenticate"

    invoke-direct {v0, v1, v3}, Lokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x3d

    new-array v1, v1, [Lokhttp3/internal/http2/Header;

    const/4 v3, 0x0

    aput-object v17, v1, v3

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object v5, v1, v2

    const/4 v2, 0x3

    aput-object v4, v1, v2

    const/4 v2, 0x4

    aput-object v7, v1, v2

    const/4 v2, 0x5

    aput-object v6, v1, v2

    const/4 v2, 0x6

    aput-object v9, v1, v2

    const/4 v2, 0x7

    aput-object v8, v1, v2

    const/16 v2, 0x8

    aput-object v11, v1, v2

    const/16 v2, 0x9

    aput-object v12, v1, v2

    const/16 v2, 0xa

    aput-object v13, v1, v2

    const/16 v2, 0xb

    aput-object v14, v1, v2

    const/16 v2, 0xc

    aput-object v15, v1, v2

    const/16 v2, 0xd

    aput-object v18, v1, v2

    const/16 v2, 0xe

    aput-object v19, v1, v2

    const/16 v2, 0xf

    aput-object v10, v1, v2

    const/16 v2, 0x10

    aput-object v20, v1, v2

    const/16 v2, 0x11

    aput-object v21, v1, v2

    const/16 v2, 0x12

    aput-object v22, v1, v2

    const/16 v2, 0x13

    aput-object v23, v1, v2

    const/16 v2, 0x14

    aput-object v24, v1, v2

    const/16 v2, 0x15

    aput-object v25, v1, v2

    const/16 v2, 0x16

    aput-object v26, v1, v2

    const/16 v2, 0x17

    aput-object v27, v1, v2

    const/16 v2, 0x18

    aput-object v28, v1, v2

    const/16 v2, 0x19

    aput-object v29, v1, v2

    const/16 v2, 0x1a

    aput-object v30, v1, v2

    const/16 v2, 0x1b

    aput-object v31, v1, v2

    const/16 v2, 0x1c

    aput-object v32, v1, v2

    const/16 v2, 0x1d

    aput-object v33, v1, v2

    const/16 v2, 0x1e

    aput-object v34, v1, v2

    const/16 v2, 0x1f

    aput-object v35, v1, v2

    const/16 v2, 0x20

    aput-object v36, v1, v2

    const/16 v2, 0x21

    aput-object v37, v1, v2

    const/16 v2, 0x22

    aput-object v38, v1, v2

    const/16 v2, 0x23

    aput-object v39, v1, v2

    const/16 v2, 0x24

    aput-object v40, v1, v2

    const/16 v2, 0x25

    aput-object v41, v1, v2

    const/16 v2, 0x26

    aput-object v42, v1, v2

    const/16 v2, 0x27

    aput-object v43, v1, v2

    const/16 v2, 0x28

    aput-object v44, v1, v2

    const/16 v2, 0x29

    aput-object v45, v1, v2

    const/16 v2, 0x2a

    aput-object v46, v1, v2

    const/16 v2, 0x2b

    aput-object v47, v1, v2

    const/16 v2, 0x2c

    aput-object v48, v1, v2

    const/16 v2, 0x2d

    aput-object v49, v1, v2

    const/16 v2, 0x2e

    aput-object v50, v1, v2

    const/16 v2, 0x2f

    aput-object v51, v1, v2

    const/16 v2, 0x30

    aput-object v52, v1, v2

    const/16 v2, 0x31

    aput-object v53, v1, v2

    const/16 v2, 0x32

    aput-object v54, v1, v2

    const/16 v2, 0x33

    aput-object v55, v1, v2

    const/16 v2, 0x34

    aput-object v56, v1, v2

    const/16 v2, 0x35

    aput-object v57, v1, v2

    const/16 v2, 0x36

    aput-object v58, v1, v2

    const/16 v2, 0x37

    aput-object v59, v1, v2

    const/16 v2, 0x38

    aput-object v60, v1, v2

    const/16 v2, 0x39

    aput-object v61, v1, v2

    const/16 v2, 0x3a

    aput-object v62, v1, v2

    const/16 v2, 0x3b

    aput-object v63, v1, v2

    const/16 v2, 0x3c

    aput-object v0, v1, v2

    .line 62
    sput-object v1, Lokhttp3/internal/http2/Hpack;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[Lokhttp3/internal/http2/Header;

    .line 63
    invoke-virtual/range {v16 .. v16}, Lokhttp3/internal/http2/Hpack;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/Hpack;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lokio/ByteString;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    sget-object v1, Lokhttp3/internal/http2/Hpack;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[Lokhttp3/internal/http2/Header;

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    invoke-direct {v0, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 7
    .line 8
    .line 9
    array-length v1, v1

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v1, :cond_1

    .line 12
    .line 13
    add-int/lit8 v3, v2, 0x1

    .line 14
    .line 15
    sget-object v4, Lokhttp3/internal/http2/Hpack;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[Lokhttp3/internal/http2/Header;

    .line 16
    .line 17
    aget-object v5, v4, v2

    .line 18
    .line 19
    iget-object v5, v5, Lokhttp3/internal/http2/Header;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/ByteString;

    .line 20
    .line 21
    invoke-virtual {v0, v5}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-nez v5, :cond_0

    .line 26
    .line 27
    aget-object v4, v4, v2

    .line 28
    .line 29
    iget-object v4, v4, Lokhttp3/internal/http2/Header;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/ByteString;

    .line 30
    .line 31
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    :cond_0
    move v2, v3

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    return-object v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()[Lokhttp3/internal/http2/Header;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lokhttp3/internal/http2/Hpack;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[Lokhttp3/internal/http2/Header;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lokio/ByteString;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lokhttp3/internal/http2/Hpack;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/ByteString;)Lokio/ByteString;
    .locals 4
    .param p1    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

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
    :goto_0
    if-ge v1, v0, :cond_2

    .line 7
    .line 8
    add-int/lit8 v2, v1, 0x1

    .line 9
    .line 10
    invoke-virtual {p1, v1}, Lokio/ByteString;->getByte(I)B

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/16 v3, 0x41

    .line 15
    .line 16
    if-gt v3, v1, :cond_1

    .line 17
    .line 18
    const/16 v3, 0x5a

    .line 19
    .line 20
    if-le v1, v3, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 24
    .line 25
    const-string v1, "PROTOCOL_ERROR response malformed: mixed case name: "

    .line 26
    .line 27
    invoke-virtual {p1}, Lokio/ByteString;->utf8()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw v0

    .line 39
    :cond_1
    :goto_1
    move v1, v2

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    return-object p1
.end method
