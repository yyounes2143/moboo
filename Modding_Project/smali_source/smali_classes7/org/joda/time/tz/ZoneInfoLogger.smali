.class public Lorg/joda/time/tz/ZoneInfoLogger;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/joda/time/tz/ZoneInfoLogger$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/joda/time/tz/ZoneInfoLogger$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/joda/time/tz/ZoneInfoLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
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

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/tz/ZoneInfoLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method
