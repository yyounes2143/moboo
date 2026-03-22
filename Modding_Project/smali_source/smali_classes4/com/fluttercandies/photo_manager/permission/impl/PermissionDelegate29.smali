.class public final Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate29;
.super Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;
.source "Proguard"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1d
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate29$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J/\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\'\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\u00112\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate29;",
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
        "SMAP\nPermissionDelegate29.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PermissionDelegate29.kt\ncom/fluttercandies/photo_manager/permission/impl/PermissionDelegate29\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,59:1\n37#2:60\n36#2,3:61\n*S KotlinDebug\n*F\n+ 1 PermissionDelegate29.kt\ncom/fluttercandies/photo_manager/permission/impl/PermissionDelegate29\n*L\n32#1:60\n32#1:61,3\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate29$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate29$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate29$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate29;->Companion:Lcom/fluttercandies/photo_manager/permission/impl/PermissionDelegate29$Companion;

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
    const-string p3, "android.permission.READ_EXTERNAL_STORAGE"

    .line 2
    .line 3
    filled-new-array {p3}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-eqz p4, :cond_0

    .line 12
    .line 13
    const-string p3, "android.permission.ACCESS_MEDIA_LOCATION"

    .line 14
    .line 15
    invoke-interface {v2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    move-object p3, v2

    .line 19
    check-cast p3, Ljava/util/Collection;

    .line 20
    .line 21
    const/4 p4, 0x0

    .line 22
    new-array p4, p4, [Ljava/lang/String;

    .line 23
    .line 24
    invoke-interface {p3, p4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    check-cast p3, [Ljava/lang/String;

    .line 29
    .line 30
    array-length p4, p3

    .line 31
    invoke-static {p3, p4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p3

    .line 35
    check-cast p3, [Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {p0, p2, p3}, Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;->Wwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;[Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    if-eqz p2, :cond_2

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/fluttercandies/photo_manager/permission/PermissionsListener;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    invoke-interface {p1, v2}, Lcom/fluttercandies/photo_manager/permission/PermissionsListener;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/List;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    return-void

    .line 53
    :cond_2
    const/4 v4, 0x4

    .line 54
    const/4 v5, 0x0

    .line 55
    const/4 v3, 0x0

    .line 56
    move-object v0, p0

    .line 57
    move-object v1, p1

    .line 58
    invoke-static/range {v0 .. v5}, Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;->Wwwwwwwwwwwwwwwwwwww(Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;Lcom/fluttercandies/photo_manager/permission/PermissionsUtils;Ljava/util/List;IILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
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
    const-string p2, "android.permission.READ_EXTERNAL_STORAGE"

    .line 2
    .line 3
    filled-new-array {p2}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/fluttercandies/photo_manager/permission/PermissionDelegate;->Wwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;[Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    sget-object p1, Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;->Authorized:Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;

    .line 14
    .line 15
    return-object p1

    .line 16
    :cond_0
    sget-object p1, Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;->Denied:Lcom/fluttercandies/photo_manager/core/entity/PermissionResult;

    .line 17
    .line 18
    return-object p1
.end method
