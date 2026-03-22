.class public final synthetic Landroidx/work/impl/Wwwwwwwwwwwwwwww;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/work/impl/utils/PreferenceUtils;


# direct methods
.method public synthetic constructor <init>(Landroidx/work/impl/utils/PreferenceUtils;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/work/impl/Wwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/work/impl/utils/PreferenceUtils;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/work/impl/Wwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwww:Landroidx/work/impl/utils/PreferenceUtils;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/work/impl/utils/PreferenceUtils;->getLastCancelAllTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method
