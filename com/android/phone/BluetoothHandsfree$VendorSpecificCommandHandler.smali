.class Lcom/android/phone/BluetoothHandsfree$VendorSpecificCommandHandler;
.super Landroid/bluetooth/AtCommandHandler;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothHandsfree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VendorSpecificCommandHandler"
.end annotation


# instance fields
.field private mCommandName:Ljava/lang/String;

.field private mCompanyId:I

.field final synthetic this$0:Lcom/android/phone/BluetoothHandsfree;


# direct methods
.method private constructor <init>(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter "commandName"
    .parameter "companyId"

    .prologue
    .line 3362
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$VendorSpecificCommandHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    .line 3363
    iput-object p2, p0, Lcom/android/phone/BluetoothHandsfree$VendorSpecificCommandHandler;->mCommandName:Ljava/lang/String;

    .line 3364
    iput p3, p0, Lcom/android/phone/BluetoothHandsfree$VendorSpecificCommandHandler;->mCompanyId:I

    .line 3365
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;ILcom/android/phone/BluetoothHandsfree$1;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 3356
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/BluetoothHandsfree$VendorSpecificCommandHandler;-><init>(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public handleActionCommand()Landroid/bluetooth/AtCommandResult;
    .registers 3

    .prologue
    .line 3379
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    return-object v0
.end method

.method public handleReadCommand()Landroid/bluetooth/AtCommandResult;
    .registers 3

    .prologue
    .line 3369
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    return-object v0
.end method

.method public handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;
    .registers 8
    .parameter "arguments"

    .prologue
    .line 3384
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$VendorSpecificCommandHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$VendorSpecificCommandHandler;->mCommandName:Ljava/lang/String;

    iget v2, p0, Lcom/android/phone/BluetoothHandsfree$VendorSpecificCommandHandler;->mCompanyId:I

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/phone/BluetoothHandsfree$VendorSpecificCommandHandler;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-static {v4}, Lcom/android/phone/BluetoothHandsfree;->access$700(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/HeadsetBase;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/android/phone/BluetoothHandsfree;->access$9200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;II[Ljava/lang/Object;Landroid/bluetooth/BluetoothDevice;)V

    .line 3389
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    return-object v0
.end method

.method public handleTestCommand()Landroid/bluetooth/AtCommandResult;
    .registers 3

    .prologue
    .line 3374
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    return-object v0
.end method
