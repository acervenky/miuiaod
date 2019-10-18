.class public final synthetic Lcom/miui/aod/doze/-$$Lambda$DozeUi$ROchPSIXP7u33DgxlSFtHjaAHiA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/aod/doze/-$$Lambda$DozeUi$ROchPSIXP7u33DgxlSFtHjaAHiA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/aod/doze/-$$Lambda$DozeUi$ROchPSIXP7u33DgxlSFtHjaAHiA;

    invoke-direct {v0}, Lcom/miui/aod/doze/-$$Lambda$DozeUi$ROchPSIXP7u33DgxlSFtHjaAHiA;-><init>()V

    sput-object v0, Lcom/miui/aod/doze/-$$Lambda$DozeUi$ROchPSIXP7u33DgxlSFtHjaAHiA;->INSTANCE:Lcom/miui/aod/doze/-$$Lambda$DozeUi$ROchPSIXP7u33DgxlSFtHjaAHiA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-static {}, Lcom/miui/aod/doze/DozeUi;->lambda$onTimeTick$6()V

    return-void
.end method
