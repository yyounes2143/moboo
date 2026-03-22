.class public final Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate33;
.super Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;
.source "Proguard"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x21
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate33$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J/\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u001f\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0017\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\'\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0007\u001a\u00020\u00132\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate33;",
        "Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;",
        "<init>",
        "()V",
        "Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;",
        "permissionsUtils",
        "Landroid/content/Context;",
        "context",
        "",
        "requestType",
        "",
        "mediaLocation",
        "",
        "Wwwwwwwwwwwwwwwwwwwwww",
        "(Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;Landroid/content/Context;IZ)V",
        "Wwwwwwwwwwwwwwwwww",
        "(Landroid/content/Context;I)Z",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Landroid/content/Context;)Z",
        "Landroid/app/Application;",
        "Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Landroid/app/Application;IZ)Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;",
        "Companion",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPermissionDelegate33.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PermissionDelegate33.kt\ncom/fluttercandies/photo_manager/permission/impl/PermissionDelegate33\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,88:1\n37#2:89\n36#2,3:90\n*S KotlinDebug\n*F\n+ 1 PermissionDelegate33.kt\ncom/fluttercandies/photo_manager/permission/impl/PermissionDelegate33\n*L\n45#1:89\n45#1:90,3\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate33$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate33$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate33$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate33;->Companion:Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate33$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public Wwwwwwwwwwwwwwwwww(Landroid/content/Context;I)Z
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/fluttercandies/photo_manager/core/utils/RequestTypeUtils;->INSTANCE:Lcom/fluttercandies/photo_manager/core/utils/RequestTypeUtils;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Lcom/fluttercandies/photo_manager/core/utils/RequestTypeUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0, p2}, Lcom/fluttercandies/photo_manager/core/utils/RequestTypeUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-virtual {v0, p2}, Lcom/fluttercandies/photo_manager/core/utils/RequestTypeUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    const/4 v0, 0x1

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    const-string v2, "android.permission.READ_MEDIA_IMAGES"

    .line 19
    .line 20
    invoke-virtual {p0, p1, v2}, Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v2, v0

    .line 26
    :goto_0
    const/4 v3, 0x0

    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    const-string v1, "android.permission.READ_MEDIA_VIDEO"

    .line 32
    .line 33
    invoke-virtual {p0, p1, v1}, Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    move v2, v0

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move v2, v3

    .line 42
    :cond_2
    :goto_1
    if-eqz p2, :cond_4

    .line 43
    .line 44
    if-eqz v2, :cond_3

    .line 45
    .line 46
    const-string p2, "android.permission.READ_MEDIA_AUDIO"

    .line 47
    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_3

    .line 53
    .line 54
    return v0

    .line 55
    :cond_3
    return v3

    .line 56
    :cond_4
    return v2
.end method

.method public Wwwwwwwwwwwwwwwwwwwwww(Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;Landroid/content/Context;IZ)V
    .locals 6
    .param p1    # Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    new-instance v2, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/fluttercandies/photo_manager/core/utils/RequestTypeUtils;->INSTANCE:Lcom/fluttercandies/photo_manager/core/utils/RequestTypeUtils;

    .line 7
    .line 8
    invoke-virtual {v0, p3}, Lcom/fluttercandies/photo_manager/core/utils/RequestTypeUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {v0, p3}, Lcom/fluttercandies/photo_manager/core/utils/RequestTypeUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    invoke-virtual {v0, p3}, Lcom/fluttercandies/photo_manager/core/utils/RequestTypeUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)Z

    .line 17
    .line 18
    .line 19
    move-result p3

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    :cond_0
    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    .line 25
    .line 26
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    const-string v0, "android.permission.READ_MEDIA_VIDEO"

    .line 30
    .line 31
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    :cond_1
    if-eqz p3, :cond_2

    .line 35
    .line 36
    const-string p3, "android.permission.READ_MEDIA_AUDIO"

    .line 37
    .line 38
    invoke-interface {v2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    :cond_2
    if-eqz p4, :cond_3

    .line 42
    .line 43
    const-string p3, "android.permission.ACCESS_MEDIA_LOCATION"

    .line 44
    .line 45
    invoke-interface {v2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    :cond_3
    const/4 p3, 0x0

    .line 49
    new-array p3, p3, [Ljava/lang/String;

    .line 50
    .line 51
    invoke-interface {v2, p3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p3

    .line 55
    check-cast p3, [Ljava/lang/String;

    .line 56
    .line 57
    array-length p4, p3

    .line 58
    invoke-static {p3, p4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p3

    .line 62
    check-cast p3, [Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {p0, p2, p3}, Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;->Wwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;[Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    if-eqz p2, :cond_5

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/fluttercandies/photo_manager/permission/PermissionsListener;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    if-eqz p1, :cond_4

    .line 75
    .line 76
    invoke-interface {p1, v2}, Lcom/fluttercandies/photo_manager/permission/PermissionsListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/List;)V

    .line 77
    .line 78
    .line 79
    :cond_4
    return-void

    .line 80
    :cond_5
    const/4 v4, 0x4

    .line 81
    const/4 v5, 0x0

    .line 82
    const/4 v3, 0x0

    .line 83
    move-object v0, p0

    .line 84
    move-object v1, p1

    .line 85
    invoke-static/range {v0 .. v5}, Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;->Wwwwwwwwwwwwwwwwwwww(Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;Ljava/util/List;IILjava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)Z
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "android.permission.ACCESS_MEDIA_LOCATION"

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/app/Application;IZ)Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;
    .locals 0
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate33;->Wwwwwwwwwwwwwwwwww(Landroid/content/Context;I)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    sget-object p1, Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;->Authorized:Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    sget-object p1, Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;->Denied:Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;

    .line 11
    .line 12
    return-object p1
.end method
