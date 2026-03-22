.class public final Lcom/facebook/FacebookSdk;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/FacebookSdk$InitializeCallback;,
        Lcom/facebook/FacebookSdk$GraphRequestCreator;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u001c\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0002uvB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0008\u001a\u00020\u0007H\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0007\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\nH\u0007\u00a2\u0006\u0004\u0008\r\u0010\u000cJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0007\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\nH\u0007\u00a2\u0006\u0004\u0008\u0011\u0010\u000cJ\u000f\u0010\u0012\u001a\u00020\u000eH\u0007\u00a2\u0006\u0004\u0008\u0012\u0010\u0010J\u000f\u0010\u0013\u001a\u00020\u000eH\u0007\u00a2\u0006\u0004\u0008\u0013\u0010\u0010J\u000f\u0010\u0014\u001a\u00020\u000eH\u0007\u00a2\u0006\u0004\u0008\u0014\u0010\u0010J\u0017\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u0015H\u0007\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J!\u0010\u001c\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u00152\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0007\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\nH\u0007\u00a2\u0006\u0004\u0008\u001e\u0010\u000cJ\u000f\u0010\u001f\u001a\u00020\u0017H\u0007\u00a2\u0006\u0004\u0008\u001f\u0010\u0003J\u0017\u0010\"\u001a\u00020\n2\u0006\u0010!\u001a\u00020 H\u0007\u00a2\u0006\u0004\u0008\"\u0010#J\u000f\u0010$\u001a\u00020\u000eH\u0007\u00a2\u0006\u0004\u0008$\u0010\u0010J\u000f\u0010%\u001a\u00020\u0015H\u0007\u00a2\u0006\u0004\u0008%\u0010&J\u001f\u0010)\u001a\u00020\u00172\u0006\u0010\'\u001a\u00020\u00152\u0006\u0010(\u001a\u00020\u000eH\u0007\u00a2\u0006\u0004\u0008)\u0010*J\u001f\u0010+\u001a\u00020\u00172\u0006\u0010\'\u001a\u00020\u00152\u0006\u0010(\u001a\u00020\u000eH\u0003\u00a2\u0006\u0004\u0008+\u0010*J\u000f\u0010,\u001a\u00020\u000eH\u0007\u00a2\u0006\u0004\u0008,\u0010\u0010J\u0017\u0010-\u001a\u00020\n2\u0006\u0010\'\u001a\u00020\u0015H\u0007\u00a2\u0006\u0004\u0008-\u0010.J\u0019\u0010/\u001a\u00020\u00172\u0008\u0010\'\u001a\u0004\u0018\u00010\u0015H\u0001\u00a2\u0006\u0004\u0008/\u0010\u0019J\u000f\u00100\u001a\u00020\u000eH\u0007\u00a2\u0006\u0004\u00080\u0010\u0010J\u0017\u00101\u001a\u00020\u00172\u0006\u0010(\u001a\u00020\u000eH\u0007\u00a2\u0006\u0004\u00081\u00102J\u0011\u00103\u001a\u0004\u0018\u00010\u000eH\u0007\u00a2\u0006\u0004\u00083\u0010\u0010J\u000f\u00104\u001a\u00020\u000eH\u0007\u00a2\u0006\u0004\u00084\u0010\u0010J\u000f\u00105\u001a\u00020\nH\u0007\u00a2\u0006\u0004\u00085\u0010\u000cJ\u000f\u00106\u001a\u00020\nH\u0007\u00a2\u0006\u0004\u00086\u0010\u000cJ\u0017\u00108\u001a\u00020\u00172\u0006\u00107\u001a\u00020\nH\u0007\u00a2\u0006\u0004\u00088\u00109J\u000f\u0010:\u001a\u00020\nH\u0007\u00a2\u0006\u0004\u0008:\u0010\u000cJ\u000f\u0010;\u001a\u00020\nH\u0007\u00a2\u0006\u0004\u0008;\u0010\u000cJ\u0017\u0010<\u001a\u00020\u00172\u0006\u00107\u001a\u00020\nH\u0007\u00a2\u0006\u0004\u0008<\u00109J\u0011\u0010>\u001a\u0004\u0018\u00010=H\u0007\u00a2\u0006\u0004\u0008>\u0010?J\u000f\u0010A\u001a\u00020@H\u0007\u00a2\u0006\u0004\u0008A\u0010BR\u001c\u0010F\u001a\n C*\u0004\u0018\u00010\u000e0\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008D\u0010ER$\u0010K\u001a\u0012\u0012\u0004\u0012\u00020 0Gj\u0008\u0012\u0004\u0012\u00020 `H8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008I\u0010JR\u0018\u0010N\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008L\u0010MR\u0018\u0010(\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008O\u0010ER\u0018\u0010Q\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008P\u0010ER\u0018\u0010S\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008R\u0010ER\u0018\u0010V\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008T\u0010UR\u0016\u0010Z\u001a\u00020W8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008X\u0010YR\u0016\u0010]\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008[\u0010\\R\u0016\u0010^\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010\\R\u001c\u0010a\u001a\u0008\u0012\u0004\u0012\u00020=0_8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008;\u0010`R\u0016\u0010\u0016\u001a\u00020\u00158\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008%\u0010bR\u0016\u0010d\u001a\u00020@8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00080\u0010cR\u0014\u0010g\u001a\u00020e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00083\u0010fR\u0016\u0010h\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00085\u0010ER\u0016\u0010i\u001a\u00020\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u00086\u0010\\R\u0016\u0010j\u001a\u00020\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008>\u0010\\R\u0016\u0010k\u001a\u00020\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008A\u0010\\R\u0014\u0010n\u001a\u00020l8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00084\u0010mR\u0016\u0010o\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008:\u0010ER\u0016\u0010p\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010ER\u0016\u0010s\u001a\u00020q8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010rR\u0016\u0010t\u001a\u00020\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\\\u00a8\u0006w"
    }
    d2 = {
        "Lcom/facebook/FacebookSdk;",
        "",
        "<init>",
        "()V",
        "Ljava/util/concurrent/Executor;",
        "Wwwwwwwwwwwwww",
        "()Ljava/util/concurrent/Executor;",
        "",
        "Wwwwwww",
        "()J",
        "",
        "Wwww",
        "()Z",
        "Kkkkkkkkkkkkkkkkkkkkkkkkk",
        "",
        "Wwwwwwwwwww",
        "()Ljava/lang/String;",
        "Www",
        "Wwwwwwwwwwwww",
        "Wwwwwwwwwwww",
        "Wwwwwwwww",
        "Landroid/content/Context;",
        "applicationContext",
        "",
        "Kkkkkkkkkkkkkkkkkkk",
        "(Landroid/content/Context;)V",
        "Lcom/facebook/FacebookSdk$InitializeCallback;",
        "callback",
        "Kkkkkkkkkkkkkkkkkk",
        "(Landroid/content/Context;Lcom/facebook/FacebookSdk$InitializeCallback;)V",
        "Kkkkkkkkkkkkkkkkkkkkkkkkkk",
        "Wwwwwwwwwwwwwwwwwwwwwwwww",
        "Lcom/facebook/LoggingBehavior;",
        "behavior",
        "Kkkkkkkkkkkkkkkkkkkkkkkk",
        "(Lcom/facebook/LoggingBehavior;)Z",
        "Wwwwwwwwww",
        "Wwwwwwwwwwwwwwwwwwwwwww",
        "()Landroid/content/Context;",
        "context",
        "applicationId",
        "Kkkkkkkkkkkkkkkkkkkkk",
        "(Landroid/content/Context;Ljava/lang/String;)V",
        "Kkkkkkkkkkkkkkkkkkkkkk",
        "Wwwwww",
        "Wwwwwwww",
        "(Landroid/content/Context;)Z",
        "Kkkkkkkkkkkkkkkkkkkkkkk",
        "Wwwwwwwwwwwwwwwwwwwwww",
        "Kkkkkkkkk",
        "(Ljava/lang/String;)V",
        "Wwwwwwwwwwwwwwwwwwwww",
        "Wwwwwwwwwwwwwwww",
        "Wwwwwwwwwwwwwwwwwwww",
        "Wwwwwwwwwwwwwwwwwww",
        "flag",
        "Kkkkkkkk",
        "(Z)V",
        "Wwwwwwwwwwwwwww",
        "Wwwwwwwwwwwwwwwwwwwwwwww",
        "Kkkkkkkkkk",
        "Ljava/io/File;",
        "Wwwwwwwwwwwwwwwwww",
        "()Ljava/io/File;",
        "",
        "Wwwwwwwwwwwwwwwww",
        "()I",
        "kotlin.jvm.PlatformType",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Ljava/lang/String;",
        "TAG",
        "Ljava/util/HashSet;",
        "Lkotlin/collections/HashSet;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Ljava/util/HashSet;",
        "loggingBehaviors",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Ljava/util/concurrent/Executor;",
        "executor",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "applicationName",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "appClientToken",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Ljava/lang/Boolean;",
        "codelessDebugLogEnabled",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "onProgressThreshold",
        "Wwwwwwwwwwwwwwwwwwwwwwwwww",
        "Z",
        "isDebugEnabledField",
        "isLegacyTokenUpgradeSupported",
        "Lcom/facebook/internal/LockOnGetVariable;",
        "Lcom/facebook/internal/LockOnGetVariable;",
        "cacheDir",
        "Landroid/content/Context;",
        "I",
        "callbackRequestCodeOffset",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "LOCK",
        "graphApiVersion",
        "hasCustomTabsPrefetching",
        "ignoreAppSwitchToLoggedOut",
        "bypassAppSwitch",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "sdkInitialized",
        "instagramDomain",
        "facebookDomain",
        "Lcom/facebook/FacebookSdk$GraphRequestCreator;",
        "Lcom/facebook/FacebookSdk$GraphRequestCreator;",
        "graphRequestCreator",
        "isFullyInitialized",
        "GraphRequestCreator",
        "InitializeCallback",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/facebook/FacebookSdk;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static Wwwwwwwwwwww:Z

.field public static Wwwwwwwwwwwww:Lcom/facebook/FacebookSdk$GraphRequestCreator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static volatile Wwwwwwwwwwwwww:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static volatile Wwwwwwwwwwwwwww:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Wwwwwwwwwwwwwwww:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static Wwwwwwwwwwwwwwwww:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static Wwwwwwwwwwwwwwwwww:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static Wwwwwwwwwwwwwwwwwww:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static Wwwwwwwwwwwwwwwwwwww:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Wwwwwwwwwwwwwwwwwwwww:Ljava/util/concurrent/locks/ReentrantLock;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static Wwwwwwwwwwwwwwwwwwwwww:I

.field public static Wwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

.field public static Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/internal/LockOnGetVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/internal/LockOnGetVariable<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public static Wwwwwwwwwwwwwwwwwwwwwwwww:Z

.field public static volatile Wwwwwwwwwwwwwwwwwwwwwwwwww:Z

.field public static Wwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/concurrent/atomic/AtomicLong;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static volatile Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public static volatile Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public static volatile Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public static volatile Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/concurrent/Executor;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/facebook/LoggingBehavior;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/facebook/FacebookSdk;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/facebook/FacebookSdk;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/facebook/FacebookSdk;->INSTANCE:Lcom/facebook/FacebookSdk;

    .line 7
    .line 8
    const-class v0, Lcom/facebook/FacebookSdk;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    new-array v0, v0, [Lcom/facebook/LoggingBehavior;

    .line 18
    .line 19
    sget-object v1, Lcom/facebook/LoggingBehavior;->DEVELOPER_ERRORS:Lcom/facebook/LoggingBehavior;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    aput-object v1, v0, v2

    .line 23
    .line 24
    invoke-static {v0}, Lkotlin/collections/SetsKt;->hashSetOf([Ljava/lang/Object;)Ljava/util/HashSet;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/HashSet;

    .line 29
    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 31
    .line 32
    const-wide/32 v3, 0x10000

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 36
    .line 37
    .line 38
    sput-object v0, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/concurrent/atomic/AtomicLong;

    .line 39
    .line 40
    const v0, 0xface

    .line 41
    .line 42
    .line 43
    sput v0, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwwwwwwwwwww:I

    .line 44
    .line 45
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 46
    .line 47
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 48
    .line 49
    .line 50
    sput-object v0, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwwwwwwwwww:Ljava/util/concurrent/locks/ReentrantLock;

    .line 51
    .line 52
    invoke-static {}, Lcom/facebook/internal/ServerProtocol;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    sput-object v0, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 57
    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 59
    .line 60
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 61
    .line 62
    .line 63
    sput-object v0, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwwwww:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 64
    .line 65
    const-string v0, "instagram.com"

    .line 66
    .line 67
    sput-object v0, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwwww:Ljava/lang/String;

    .line 68
    .line 69
    const-string v0, "facebook.com"

    .line 70
    .line 71
    sput-object v0, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwww:Ljava/lang/String;

    .line 72
    .line 73
    new-instance v0, Lcom/facebook/Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 74
    .line 75
    invoke-direct {v0}, Lcom/facebook/Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>()V

    .line 76
    .line 77
    .line 78
    sput-object v0, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwww:Lcom/facebook/FacebookSdk$GraphRequestCreator;

    .line 79
    .line 80
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

.method public static final Kkkkkkkk(Z)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/facebook/UserSettingsManager;->Wwwwwwwwwwwwwww(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p0, :cond_0

    .line 5
    .line 6
    invoke-static {}, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwwwwwwwwwwww()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Landroid/app/Application;

    .line 11
    .line 12
    sget-object v0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->INSTANCE:Lcom/facebook/appevents/internal/ActivityLifecycleTracker;

    .line 13
    .line 14
    invoke-static {}, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {p0, v0}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->Wwwwwwwwwww(Landroid/app/Application;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public static final Kkkkkkkkk(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const-string v0, "applicationId"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->Wwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p0, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static final Kkkkkkkkkk(Z)V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/facebook/UserSettingsManager;->Wwwwwwwwwwwwwwww(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final Kkkkkkkkkkk(Lcom/facebook/FacebookSdk$InitializeCallback;)Ljava/lang/Void;
    .locals 2

    .line 1
    sget-object v0, Lcom/facebook/AccessTokenManager;->Companion:Lcom/facebook/AccessTokenManager$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/facebook/AccessTokenManager$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/facebook/AccessTokenManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/facebook/AccessTokenManager;->Wwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 8
    .line 9
    .line 10
    sget-object v0, Lcom/facebook/ProfileManager;->Companion:Lcom/facebook/ProfileManager$Companion;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/facebook/ProfileManager$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/facebook/ProfileManager;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/facebook/ProfileManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 17
    .line 18
    .line 19
    sget-object v0, Lcom/facebook/AccessToken;->Companion:Lcom/facebook/AccessToken$Companion;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/facebook/AccessToken$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    sget-object v0, Lcom/facebook/Profile;->Companion:Lcom/facebook/Profile$Companion;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/facebook/Profile$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/facebook/Profile;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-nez v1, :cond_0

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/facebook/Profile$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 36
    .line 37
    .line 38
    :cond_0
    if-nez p0, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-interface {p0}, Lcom/facebook/FacebookSdk$InitializeCallback;->onInitialized()V

    .line 42
    .line 43
    .line 44
    :goto_0
    sget-object p0, Lcom/facebook/appevents/AppEventsLogger;->Companion:Lcom/facebook/appevents/AppEventsLogger$Companion;

    .line 45
    .line 46
    invoke-static {}, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwwwwwwwwwwww()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    sget-object v1, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {p0, v0, v1}, Lcom/facebook/appevents/AppEventsLogger$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-static {}, Lcom/facebook/UserSettingsManager;->Wwwwwwwwwwwwwwwwwwwww()V

    .line 56
    .line 57
    .line 58
    invoke-static {}, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwwwwwwwwwwww()Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {p0, v0}, Lcom/facebook/appevents/AppEventsLogger$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-virtual {p0}, Lcom/facebook/appevents/AppEventsLogger;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 71
    .line 72
    .line 73
    const/4 p0, 0x0

    .line 74
    return-object p0
.end method

.method public static final Kkkkkkkkkkkk(Z)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    sput-boolean p0, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwwwwww:Z

    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method public static final Kkkkkkkkkkkkk(Z)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    sput-boolean p0, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwwwwwww:Z

    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method public static final Kkkkkkkkkkkkkk(Z)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    sput-boolean p0, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwwwwwwww:Z

    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method public static final Kkkkkkkkkkkkkkk(Z)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lcom/facebook/appevents/AppEventsManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method public static final Kkkkkkkkkkkkkkkk(Z)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lcom/facebook/internal/instrument/InstrumentManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method public static final Kkkkkkkkkkkkkkkkk()Ljava/io/File;
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public static final declared-synchronized Kkkkkkkkkkkkkkkkkk(Landroid/content/Context;Lcom/facebook/FacebookSdk$InitializeCallback;)V
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/facebook/FacebookSdk$InitializeCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        message = ""
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const-class v0, Lcom/facebook/FacebookSdk;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwwwww:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-eqz v2, :cond_1

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-interface {p1}, Lcom/facebook/FacebookSdk$InitializeCallback;->onInitialized()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    :goto_0
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto/16 :goto_3

    .line 22
    .line 23
    :cond_1
    const/4 v2, 0x0

    .line 24
    :try_start_1
    invoke-static {p0, v2}, Lcom/facebook/internal/Validate;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Z)V

    .line 25
    .line 26
    .line 27
    invoke-static {p0, v2}, Lcom/facebook/internal/Validate;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Z)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    sput-object v2, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 35
    .line 36
    sget-object v2, Lcom/facebook/appevents/AppEventsLogger;->Companion:Lcom/facebook/appevents/AppEventsLogger$Companion;

    .line 37
    .line 38
    invoke-virtual {v2, p0}, Lcom/facebook/appevents/AppEventsLogger$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    sget-object p0, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 42
    .line 43
    const/4 v2, 0x0

    .line 44
    if-eqz p0, :cond_b

    .line 45
    .line 46
    invoke-static {p0}, Lcom/facebook/FacebookSdk;->Kkkkkkkkkkkkkkkkkkkkkkk(Landroid/content/Context;)V

    .line 47
    .line 48
    .line 49
    sget-object p0, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 50
    .line 51
    if-eqz p0, :cond_a

    .line 52
    .line 53
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    if-eqz p0, :cond_a

    .line 58
    .line 59
    sget-object p0, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 60
    .line 61
    if-eqz p0, :cond_9

    .line 62
    .line 63
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    if-eqz p0, :cond_9

    .line 68
    .line 69
    const/4 p0, 0x1

    .line 70
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 71
    .line 72
    .line 73
    invoke-static {}, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwwwwwwwww()Z

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    if-eqz p0, :cond_2

    .line 78
    .line 79
    invoke-static {}, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 80
    .line 81
    .line 82
    :cond_2
    sget-object p0, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 83
    .line 84
    if-eqz p0, :cond_8

    .line 85
    .line 86
    instance-of p0, p0, Landroid/app/Application;

    .line 87
    .line 88
    if-eqz p0, :cond_4

    .line 89
    .line 90
    invoke-static {}, Lcom/facebook/UserSettingsManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    if-eqz p0, :cond_4

    .line 95
    .line 96
    sget-object p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->INSTANCE:Lcom/facebook/appevents/internal/ActivityLifecycleTracker;

    .line 97
    .line 98
    sget-object p0, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 99
    .line 100
    if-eqz p0, :cond_3

    .line 101
    .line 102
    check-cast p0, Landroid/app/Application;

    .line 103
    .line 104
    sget-object v1, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 105
    .line 106
    invoke-static {p0, v1}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->Wwwwwwwwwww(Landroid/app/Application;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_3
    throw v2

    .line 111
    :cond_4
    :goto_1
    sget-object p0, Lcom/facebook/appevents/internal/AppLinkManager;->Companion:Lcom/facebook/appevents/internal/AppLinkManager$Companion;

    .line 112
    .line 113
    invoke-virtual {p0}, Lcom/facebook/appevents/internal/AppLinkManager$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/facebook/appevents/internal/AppLinkManager;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    if-nez p0, :cond_5

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_5
    sget-object v1, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 121
    .line 122
    if-eqz v1, :cond_7

    .line 123
    .line 124
    check-cast v1, Landroid/app/Application;

    .line 125
    .line 126
    invoke-virtual {p0, v1}, Lcom/facebook/appevents/internal/AppLinkManager;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/app/Application;)V

    .line 127
    .line 128
    .line 129
    :goto_2
    invoke-static {}, Lcom/facebook/internal/FetchedAppSettingsManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 130
    .line 131
    .line 132
    invoke-static {}, Lcom/facebook/internal/NativeProtocol;->Wwwwww()V

    .line 133
    .line 134
    .line 135
    sget-object p0, Lcom/facebook/internal/BoltsMeasurementEventListener;->Companion:Lcom/facebook/internal/BoltsMeasurementEventListener$Companion;

    .line 136
    .line 137
    sget-object v1, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 138
    .line 139
    if-eqz v1, :cond_6

    .line 140
    .line 141
    invoke-virtual {p0, v1}, Lcom/facebook/internal/BoltsMeasurementEventListener$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)Lcom/facebook/internal/BoltsMeasurementEventListener;

    .line 142
    .line 143
    .line 144
    new-instance p0, Lcom/facebook/internal/LockOnGetVariable;

    .line 145
    .line 146
    new-instance v1, Lcom/facebook/Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 147
    .line 148
    invoke-direct {v1}, Lcom/facebook/Wwwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>()V

    .line 149
    .line 150
    .line 151
    invoke-direct {p0, v1}, Lcom/facebook/internal/LockOnGetVariable;-><init>(Ljava/util/concurrent/Callable;)V

    .line 152
    .line 153
    .line 154
    sput-object p0, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/internal/LockOnGetVariable;

    .line 155
    .line 156
    sget-object p0, Lcom/facebook/internal/FeatureManager;->INSTANCE:Lcom/facebook/internal/FeatureManager;

    .line 157
    .line 158
    sget-object p0, Lcom/facebook/internal/FeatureManager$Feature;->Instrument:Lcom/facebook/internal/FeatureManager$Feature;

    .line 159
    .line 160
    new-instance v1, Lcom/facebook/Wwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 161
    .line 162
    invoke-direct {v1}, Lcom/facebook/Wwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>()V

    .line 163
    .line 164
    .line 165
    invoke-static {p0, v1}, Lcom/facebook/internal/FeatureManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$Callback;)V

    .line 166
    .line 167
    .line 168
    sget-object p0, Lcom/facebook/internal/FeatureManager$Feature;->AppEvents:Lcom/facebook/internal/FeatureManager$Feature;

    .line 169
    .line 170
    new-instance v1, Lcom/facebook/Wwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 171
    .line 172
    invoke-direct {v1}, Lcom/facebook/Wwwwwwwwwwwwwwwwwwwwwwwwww;-><init>()V

    .line 173
    .line 174
    .line 175
    invoke-static {p0, v1}, Lcom/facebook/internal/FeatureManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$Callback;)V

    .line 176
    .line 177
    .line 178
    sget-object p0, Lcom/facebook/internal/FeatureManager$Feature;->ChromeCustomTabsPrefetching:Lcom/facebook/internal/FeatureManager$Feature;

    .line 179
    .line 180
    new-instance v1, Lcom/facebook/Wwwwwwwwwwwwwwwwwwwwwwwww;

    .line 181
    .line 182
    invoke-direct {v1}, Lcom/facebook/Wwwwwwwwwwwwwwwwwwwwwwwww;-><init>()V

    .line 183
    .line 184
    .line 185
    invoke-static {p0, v1}, Lcom/facebook/internal/FeatureManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$Callback;)V

    .line 186
    .line 187
    .line 188
    sget-object p0, Lcom/facebook/internal/FeatureManager$Feature;->IgnoreAppSwitchToLoggedOut:Lcom/facebook/internal/FeatureManager$Feature;

    .line 189
    .line 190
    new-instance v1, Lcom/facebook/Wwwwwwwwwwwwwwwwwwwwwwww;

    .line 191
    .line 192
    invoke-direct {v1}, Lcom/facebook/Wwwwwwwwwwwwwwwwwwwwwwww;-><init>()V

    .line 193
    .line 194
    .line 195
    invoke-static {p0, v1}, Lcom/facebook/internal/FeatureManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$Callback;)V

    .line 196
    .line 197
    .line 198
    sget-object p0, Lcom/facebook/internal/FeatureManager$Feature;->BypassAppSwitch:Lcom/facebook/internal/FeatureManager$Feature;

    .line 199
    .line 200
    new-instance v1, Lcom/facebook/Wwwwwwwwwwwwwwwwwwwwwww;

    .line 201
    .line 202
    invoke-direct {v1}, Lcom/facebook/Wwwwwwwwwwwwwwwwwwwwwww;-><init>()V

    .line 203
    .line 204
    .line 205
    invoke-static {p0, v1}, Lcom/facebook/internal/FeatureManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$Callback;)V

    .line 206
    .line 207
    .line 208
    new-instance p0, Ljava/util/concurrent/FutureTask;

    .line 209
    .line 210
    new-instance v1, Lcom/facebook/Wwwwwwwwwwwwwwwwwwwwww;

    .line 211
    .line 212
    invoke-direct {v1, p1}, Lcom/facebook/Wwwwwwwwwwwwwwwwwwwwww;-><init>(Lcom/facebook/FacebookSdk$InitializeCallback;)V

    .line 213
    .line 214
    .line 215
    invoke-direct {p0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 216
    .line 217
    .line 218
    invoke-static {}, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwww()Ljava/util/concurrent/Executor;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    .line 224
    .line 225
    monitor-exit v0

    .line 226
    return-void

    .line 227
    :cond_6
    :try_start_2
    throw v2

    .line 228
    :cond_7
    throw v2

    .line 229
    :cond_8
    throw v2

    .line 230
    :cond_9
    new-instance p0, Lcom/facebook/FacebookException;

    .line 231
    .line 232
    const-string p1, "A valid Facebook app client token must be set in the AndroidManifest.xml or set by calling FacebookSdk.setClientToken before initializing the sdk."

    .line 233
    .line 234
    invoke-direct {p0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    throw p0

    .line 238
    :cond_a
    new-instance p0, Lcom/facebook/FacebookException;

    .line 239
    .line 240
    const-string p1, "A valid Facebook app id must be set in the AndroidManifest.xml or set by calling FacebookSdk.setApplicationId before initializing the sdk."

    .line 241
    .line 242
    invoke-direct {p0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    throw p0

    .line 246
    :cond_b
    throw v2

    .line 247
    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 248
    throw p0
.end method

.method public static final declared-synchronized Kkkkkkkkkkkkkkkkkkk(Landroid/content/Context;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        message = ""
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const-class v0, Lcom/facebook/FacebookSdk;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    invoke-static {p0, v1}, Lcom/facebook/FacebookSdk;->Kkkkkkkkkkkkkkkkkk(Landroid/content/Context;Lcom/facebook/FacebookSdk$InitializeCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    throw p0
.end method

.method public static final Kkkkkkkkkkkkkkkkkkkk(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/FacebookSdk;->INSTANCE:Lcom/facebook/FacebookSdk;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1}, Lcom/facebook/FacebookSdk;->Kkkkkkkkkkkkkkkkkkkkkk(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static final Kkkkkkkkkkkkkkkkkkkkk(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x3
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const-class v0, Lcom/facebook/FacebookSdk;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-nez p0, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    sget-object v1, Lcom/facebook/internal/FetchedAppGateKeepersManager;->INSTANCE:Lcom/facebook/internal/FetchedAppGateKeepersManager;

    .line 18
    .line 19
    const-string v1, "app_events_killswitch"

    .line 20
    .line 21
    invoke-static {}, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-static {v1, v2, v3}, Lcom/facebook/internal/FetchedAppGateKeepersManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_2

    .line 31
    .line 32
    invoke-static {}, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwww()Ljava/util/concurrent/Executor;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    new-instance v2, Lcom/facebook/Wwwwwwwwwwwwwwwwwwwww;

    .line 37
    .line 38
    invoke-direct {v2, p0, p1}, Lcom/facebook/Wwwwwwwwwwwwwwwwwwwww;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto :goto_2

    .line 47
    :cond_2
    :goto_0
    sget-object p0, Lcom/facebook/internal/FeatureManager;->INSTANCE:Lcom/facebook/internal/FeatureManager;

    .line 48
    .line 49
    sget-object p0, Lcom/facebook/internal/FeatureManager$Feature;->OnDeviceEventProcessing:Lcom/facebook/internal/FeatureManager$Feature;

    .line 50
    .line 51
    invoke-static {p0}, Lcom/facebook/internal/FeatureManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/internal/FeatureManager$Feature;)Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    if-eqz p0, :cond_3

    .line 56
    .line 57
    invoke-static {}, Lcom/facebook/appevents/ondeviceprocessing/OnDeviceProcessingManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    if-eqz p0, :cond_3

    .line 62
    .line 63
    const-string p0, "com.facebook.sdk.attributionTracking"

    .line 64
    .line 65
    invoke-static {p1, p0}, Lcom/facebook/appevents/ondeviceprocessing/OnDeviceProcessingManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    .line 68
    :cond_3
    :goto_1
    return-void

    .line 69
    :goto_2
    invoke-static {p0, v0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method public static final Kkkkkkkkkkkkkkkkkkkkkkk(Landroid/content/Context;)V
    .locals 6
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    goto/16 :goto_1

    .line 4
    .line 5
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const/16 v1, 0x80

    .line 14
    .line 15
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 16
    .line 17
    .line 18
    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    goto/16 :goto_1

    .line 24
    .line 25
    :cond_1
    sget-object v0, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    if-nez v0, :cond_5

    .line 29
    .line 30
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 31
    .line 32
    const-string v2, "com.facebook.sdk.ApplicationId"

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    instance-of v2, v0, Ljava/lang/String;

    .line 39
    .line 40
    if-eqz v2, :cond_3

    .line 41
    .line 42
    check-cast v0, Ljava/lang/String;

    .line 43
    .line 44
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    const-string v3, "fb"

    .line 51
    .line 52
    const/4 v4, 0x0

    .line 53
    const/4 v5, 0x2

    .line 54
    invoke-static {v2, v3, v1, v5, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_2

    .line 59
    .line 60
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    sput-object v0, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    sput-object v0, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    instance-of v0, v0, Ljava/lang/Number;

    .line 71
    .line 72
    if-nez v0, :cond_4

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_4
    new-instance p0, Lcom/facebook/FacebookException;

    .line 76
    .line 77
    const-string v0, "App Ids cannot be directly placed in the manifest.They must be prefixed by \'fb\' or be placed in the string resource file."

    .line 78
    .line 79
    invoke-direct {p0, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p0

    .line 83
    :cond_5
    :goto_0
    sget-object v0, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 84
    .line 85
    if-nez v0, :cond_6

    .line 86
    .line 87
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 88
    .line 89
    const-string v2, "com.facebook.sdk.ApplicationName"

    .line 90
    .line 91
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    sput-object v0, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 96
    .line 97
    :cond_6
    sget-object v0, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 98
    .line 99
    if-nez v0, :cond_7

    .line 100
    .line 101
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 102
    .line 103
    const-string v2, "com.facebook.sdk.ClientToken"

    .line 104
    .line 105
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    sput-object v0, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 110
    .line 111
    :cond_7
    sget v0, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwwwwwwwwwww:I

    .line 112
    .line 113
    const v2, 0xface

    .line 114
    .line 115
    .line 116
    if-ne v0, v2, :cond_8

    .line 117
    .line 118
    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 119
    .line 120
    const-string v3, "com.facebook.sdk.CallbackOffset"

    .line 121
    .line 122
    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    sput v0, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwwwwwwwwwww:I

    .line 127
    .line 128
    :cond_8
    sget-object v0, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Boolean;

    .line 129
    .line 130
    if-nez v0, :cond_9

    .line 131
    .line 132
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 133
    .line 134
    const-string v0, "com.facebook.sdk.CodelessDebugLogEnabled"

    .line 135
    .line 136
    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 137
    .line 138
    .line 139
    move-result p0

    .line 140
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    sput-object p0, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Boolean;

    .line 145
    .line 146
    :catch_0
    :cond_9
    :goto_1
    return-void
.end method

.method public static final Kkkkkkkkkkkkkkkkkkkkkkkk(Lcom/facebook/LoggingBehavior;)Z
    .locals 2
    .param p0    # Lcom/facebook/LoggingBehavior;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/HashSet;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/facebook/FacebookSdk;->Wwww()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    :goto_0
    monitor-exit v0

    .line 22
    return p0

    .line 23
    :goto_1
    monitor-exit v0

    .line 24
    throw p0
.end method

.method public static final Kkkkkkkkkkkkkkkkkkkkkkkkk()Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-boolean v0, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    return v0
.end method

.method public static final Kkkkkkkkkkkkkkkkkkkkkkkkkk()Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwwwww:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public static final declared-synchronized Www()Z
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const-class v0, Lcom/facebook/FacebookSdk;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwww:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    throw v1
.end method

.method public static final Wwww()Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-boolean v0, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    return v0
.end method

.method public static final Wwwww(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/GraphRequest;->Companion:Lcom/facebook/GraphRequest$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/facebook/GraphRequest$Companion;->Wwwwwwww(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static final Wwwwww()Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "17.0.2"

    .line 2
    .line 3
    return-object v0
.end method

.method public static final Wwwwwww()J
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/internal/Validate;->Wwwwwwwwwwwwwwwwwwww()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/concurrent/atomic/AtomicLong;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    return-wide v0
.end method

.method public static final Wwwwwwww(Landroid/content/Context;)Z
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/internal/Validate;->Wwwwwwwwwwwwwwwwwwww()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.facebook.sdk.appEventPreferences"

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string v0, "limitEventUsage"

    .line 12
    .line 13
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public static final Wwwwwwwww()Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwwww:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final Wwwwwwwwww()Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/AccessToken;->Companion:Lcom/facebook/AccessToken$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/facebook/AccessToken$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/facebook/AccessToken;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->Wwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    invoke-static {v0}, Lcom/facebook/internal/Utility;->Www(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public static final Wwwwwwwwwww()Ljava/lang/String;
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/internal/Utility;->INSTANCE:Lcom/facebook/internal/Utility;

    .line 2
    .line 3
    sget-object v0, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 4
    .line 5
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    new-array v2, v1, [Ljava/lang/Object;

    .line 9
    .line 10
    sget-object v3, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 11
    .line 12
    const/4 v4, 0x0

    .line 13
    aput-object v3, v2, v4

    .line 14
    .line 15
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "getGraphApiVersion: %s"

    .line 20
    .line 21
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v0, v1}, Lcom/facebook/internal/Utility;->Illllllllllllllllllllll(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    sget-object v0, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 29
    .line 30
    return-object v0
.end method

.method public static final Wwwwwwwwwwww()Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "fb.gg"

    .line 2
    .line 3
    return-object v0
.end method

.method public static final Wwwwwwwwwwwww()Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwww:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final Wwwwwwwwwwwwww()Ljava/util/concurrent/Executor;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwwwwwwwwww:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    sget-object v1, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 11
    .line 12
    sput-object v1, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/concurrent/Executor;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception v1

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :goto_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 20
    .line 21
    .line 22
    sget-object v0, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/concurrent/Executor;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 28
    .line 29
    const-string v1, "Required value was null."

    .line 30
    .line 31
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw v0

    .line 35
    :goto_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 36
    .line 37
    .line 38
    throw v1
.end method

.method public static final Wwwwwwwwwwwwwww()Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/UserSettingsManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static final Wwwwwwwwwwwwwwww()Ljava/lang/String;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/internal/Validate;->Wwwwwwwwwwwwwwwwwwww()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    new-instance v0, Lcom/facebook/FacebookException;

    .line 10
    .line 11
    const-string v1, "A valid Facebook client token must be set in the AndroidManifest.xml or set by calling FacebookSdk.setClientToken before initializing the sdk. Visit https://developers.facebook.com/docs/android/getting-started#add-app_id for more information."

    .line 12
    .line 13
    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw v0
.end method

.method public static final Wwwwwwwwwwwwwwwww()I
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/internal/Validate;->Wwwwwwwwwwwwwwwwwwww()V

    .line 2
    .line 3
    .line 4
    sget v0, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwwwwwwwwwww:I

    .line 5
    .line 6
    return v0
.end method

.method public static final Wwwwwwwwwwwwwwwwww()Ljava/io/File;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/internal/Validate;->Wwwwwwwwwwwwwwwwwwww()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/internal/LockOnGetVariable;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/facebook/internal/LockOnGetVariable;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/io/File;

    .line 14
    .line 15
    return-object v0
.end method

.method public static final Wwwwwwwwwwwwwwwwwww()Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/UserSettingsManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static final Wwwwwwwwwwwwwwwwwwww()Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/UserSettingsManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static final Wwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/internal/Validate;->Wwwwwwwwwwwwwwwwwwww()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 5
    .line 6
    return-object v0
.end method

.method public static final Wwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/internal/Validate;->Wwwwwwwwwwwwwwwwwwww()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    new-instance v0, Lcom/facebook/FacebookException;

    .line 10
    .line 11
    const-string v1, "A valid Facebook app id must be set in the AndroidManifest.xml or set by calling FacebookSdk.setApplicationId before initializing the sdk."

    .line 12
    .line 13
    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw v0
.end method

.method public static final Wwwwwwwwwwwwwwwwwwwwwww()Landroid/content/Context;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/internal/Validate;->Wwwwwwwwwwwwwwwwwwww()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwwwwwwwwwwww:Landroid/content/Context;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public static final Wwwwwwwwwwwwwwwwwwwwwwww()Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/UserSettingsManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static final Wwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwww:Z

    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/facebook/FacebookSdk;->Kkkkkkkkkkkkkkkkkkkk(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwww(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/facebook/FacebookSdk;->Kkkkkkkkkkkk(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/facebook/FacebookSdk;->Kkkkkkkkkkkkkk(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/facebook/FacebookSdk;->Kkkkkkkkkkkkkkk(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/FacebookSdk;->Wwwww(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/FacebookSdk$InitializeCallback;)Ljava/lang/Void;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/facebook/FacebookSdk;->Kkkkkkkkkkk(Lcom/facebook/FacebookSdk$InitializeCallback;)Ljava/lang/Void;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/facebook/FacebookSdk;->Kkkkkkkkkkkkk(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/facebook/FacebookSdk;->Kkkkkkkkkkkkkkkk(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/io/File;
    .locals 1

    .line 1
    invoke-static {}, Lcom/facebook/FacebookSdk;->Kkkkkkkkkkkkkkkkk()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public final Kkkkkkkkkkkkkkkkkkkkkk(Landroid/content/Context;Ljava/lang/String;)V
    .locals 12

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    goto/16 :goto_2

    .line 10
    .line 11
    :cond_0
    :try_start_0
    sget-object v2, Lcom/facebook/internal/AttributionIdentifiers;->Companion:Lcom/facebook/internal/AttributionIdentifiers$Companion;

    .line 12
    .line 13
    invoke-virtual {v2, p1}, Lcom/facebook/internal/AttributionIdentifiers$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const-string v3, "com.facebook.sdk.attributionTracking"

    .line 18
    .line 19
    invoke-virtual {p1, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    const-string v4, "ping"

    .line 24
    .line 25
    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    const-wide/16 v5, 0x0

    .line 30
    .line 31
    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 32
    .line 33
    .line 34
    move-result-wide v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :try_start_1
    sget-object v9, Lcom/facebook/appevents/internal/AppEventsLoggerUtility;->INSTANCE:Lcom/facebook/appevents/internal/AppEventsLoggerUtility;

    .line 36
    .line 37
    sget-object v9, Lcom/facebook/appevents/internal/AppEventsLoggerUtility$GraphAPIActivityType;->MOBILE_INSTALL_EVENT:Lcom/facebook/appevents/internal/AppEventsLoggerUtility$GraphAPIActivityType;

    .line 38
    .line 39
    sget-object v10, Lcom/facebook/appevents/AppEventsLogger;->Companion:Lcom/facebook/appevents/AppEventsLogger$Companion;

    .line 40
    .line 41
    invoke-virtual {v10, p1}, Lcom/facebook/appevents/AppEventsLogger$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v10

    .line 45
    invoke-static {p1}, Lcom/facebook/FacebookSdk;->Wwwwwwww(Landroid/content/Context;)Z

    .line 46
    .line 47
    .line 48
    move-result v11

    .line 49
    invoke-static {v9, v2, v10, v11, p1}, Lcom/facebook/appevents/internal/AppEventsLoggerUtility;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/appevents/internal/AppEventsLoggerUtility$GraphAPIActivityType;Lcom/facebook/internal/AttributionIdentifiers;Ljava/lang/String;ZLandroid/content/Context;)Lorg/json/JSONObject;

    .line 50
    .line 51
    .line 52
    move-result-object p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    :try_start_2
    sget-object v2, Lcom/facebook/appevents/AppEventsLoggerImpl;->Companion:Lcom/facebook/appevents/AppEventsLoggerImpl$Companion;

    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/facebook/appevents/AppEventsLoggerImpl$Companion;->Wwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    if-eqz v2, :cond_1

    .line 60
    .line 61
    const-string v9, "install_referrer"

    .line 62
    .line 63
    invoke-virtual {p1, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catchall_0
    move-exception p1

    .line 68
    goto :goto_3

    .line 69
    :catch_0
    move-exception p1

    .line 70
    goto :goto_1

    .line 71
    :cond_1
    :goto_0
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 72
    .line 73
    const-string v2, "%s/activities"

    .line 74
    .line 75
    new-array v9, v0, [Ljava/lang/Object;

    .line 76
    .line 77
    aput-object p2, v9, v1

    .line 78
    .line 79
    invoke-static {v9, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    invoke-static {v2, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    sget-object v0, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwww:Lcom/facebook/FacebookSdk$GraphRequestCreator;

    .line 88
    .line 89
    const/4 v1, 0x0

    .line 90
    invoke-interface {v0, v1, p2, p1, v1}, Lcom/facebook/FacebookSdk$GraphRequestCreator;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    cmp-long p2, v7, v5

    .line 95
    .line 96
    if-nez p2, :cond_2

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->Wwwwwwwwwwwwwwwwwwwwwwww()Lcom/facebook/GraphResponse;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/facebook/FacebookRequestError;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    if-nez p1, :cond_2

    .line 107
    .line 108
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 113
    .line 114
    .line 115
    move-result-wide v0

    .line 116
    invoke-interface {p1, v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 117
    .line 118
    .line 119
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 120
    .line 121
    .line 122
    sget-object p1, Lcom/facebook/internal/Logger;->Companion:Lcom/facebook/internal/Logger$Companion;

    .line 123
    .line 124
    sget-object p2, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    .line 125
    .line 126
    sget-object v0, Lcom/facebook/FacebookSdk;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 127
    .line 128
    const-string v1, "MOBILE_APP_INSTALL has been logged"

    .line 129
    .line 130
    invoke-virtual {p1, p2, v0, v1}, Lcom/facebook/internal/Logger$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    :catch_1
    move-exception p1

    .line 135
    new-instance p2, Lcom/facebook/FacebookException;

    .line 136
    .line 137
    const-string v0, "An error occurred while publishing install."

    .line 138
    .line 139
    invoke-direct {p2, v0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    .line 141
    .line 142
    throw p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    :goto_1
    :try_start_3
    const-string p2, "Facebook-publish"

    .line 144
    .line 145
    invoke-static {p2, p1}, Lcom/facebook/internal/Utility;->Illlllllllllllllllllllll(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 146
    .line 147
    .line 148
    :cond_2
    :goto_2
    return-void

    .line 149
    :goto_3
    invoke-static {p1, p0}, Lcom/facebook/internal/instrument/crashshield/CrashShieldHandler;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    return-void
.end method
