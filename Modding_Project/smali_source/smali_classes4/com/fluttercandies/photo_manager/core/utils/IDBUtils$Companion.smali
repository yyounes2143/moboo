.class public final Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fluttercandies/photo_manager/core/utils/IDBUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0011\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001a\u0010\t\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u001d\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000c\u0010\u000eR\u001d\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\r\u001a\u0004\u0008\u0010\u0010\u000eR\u001d\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u00128\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0013\u0010\u0015R\u001d\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u00128\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0014\u001a\u0004\u0008\u0005\u0010\u0015R\u0011\u0010\u001b\u001a\u00020\u00188F\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;",
        "",
        "<init>",
        "()V",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Z",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "()Z",
        "isAboveAndroidQ",
        "",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Ljava/util/List;",
        "()Ljava/util/List;",
        "storeImageKeys",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "storeVideoKeys",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "[Ljava/lang/String;",
        "()[Ljava/lang/String;",
        "typeKeys",
        "storeBucketKeys",
        "Landroid/net/Uri;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "()Landroid/net/Uri;",
        "allUri",
        "photo_manager_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:[Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z
    .annotation build Landroidx/annotation/ChecksSdkIntAtLeast;
        api = 0x1d
    .end annotation
.end field

.field public static final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 1
    new-instance v0, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;

    .line 7
    .line 8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    .line 10
    const/16 v1, 0x1d

    .line 11
    .line 12
    if-lt v0, v1, :cond_0

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v2, 0x0

    .line 17
    :goto_0
    sput-boolean v2, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 18
    .line 19
    const-string v14, "mime_type"

    .line 20
    .line 21
    const-string v15, "datetaken"

    .line 22
    .line 23
    const-string v3, "_display_name"

    .line 24
    .line 25
    const-string v4, "_data"

    .line 26
    .line 27
    const-string v5, "_id"

    .line 28
    .line 29
    const-string v6, "title"

    .line 30
    .line 31
    const-string v7, "bucket_id"

    .line 32
    .line 33
    const-string v8, "bucket_display_name"

    .line 34
    .line 35
    const-string v9, "width"

    .line 36
    .line 37
    const-string v10, "height"

    .line 38
    .line 39
    const-string v11, "orientation"

    .line 40
    .line 41
    const-string v12, "date_added"

    .line 42
    .line 43
    const-string v13, "date_modified"

    .line 44
    .line 45
    filled-new-array/range {v3 .. v15}, [Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    const-string v3, "datetaken"

    .line 54
    .line 55
    if-lt v0, v1, :cond_1

    .line 56
    .line 57
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    :cond_1
    sput-object v2, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 61
    .line 62
    const-string v15, "mime_type"

    .line 63
    .line 64
    const-string v16, "duration"

    .line 65
    .line 66
    const-string v4, "_display_name"

    .line 67
    .line 68
    const-string v5, "_data"

    .line 69
    .line 70
    const-string v6, "_id"

    .line 71
    .line 72
    const-string v7, "title"

    .line 73
    .line 74
    const-string v8, "bucket_id"

    .line 75
    .line 76
    const-string v9, "bucket_display_name"

    .line 77
    .line 78
    const-string v10, "date_added"

    .line 79
    .line 80
    const-string v11, "width"

    .line 81
    .line 82
    const-string v12, "height"

    .line 83
    .line 84
    const-string v13, "orientation"

    .line 85
    .line 86
    const-string v14, "date_modified"

    .line 87
    .line 88
    filled-new-array/range {v4 .. v16}, [Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    if-lt v0, v1, :cond_2

    .line 97
    .line 98
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    :cond_2
    sput-object v2, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 102
    .line 103
    const-string v0, "media_type"

    .line 104
    .line 105
    const-string v1, "_display_name"

    .line 106
    .line 107
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    sput-object v0, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[Ljava/lang/String;

    .line 112
    .line 113
    const-string v0, "bucket_id"

    .line 114
    .line 115
    const-string v1, "bucket_display_name"

    .line 116
    .line 117
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    sput-object v0, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:[Ljava/lang/String;

    .line 122
    .line 123
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
.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    return v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()[Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()[Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/fluttercandies/photo_manager/core/utils/IDBUtils$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Landroid/net/Uri;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "external"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
