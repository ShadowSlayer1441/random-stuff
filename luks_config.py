#!/usr/bin/python3

# Copyright 2025 The Secureblue Authors
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

"""
The LUKS configuration python file
"""

import sys
from pathlib import Path
from typing import Final

import sandbox
from sandbox import SandboxedFunction

LUKS_HELP: Final[str] = """
This script is designed to validate if your installation is ready
for FIDO2 or TPM2 unlocking, setup them up, and create a backup key.

usage:
ujust luks-config tpm2 enable
    Sets up and configures FIDO2 LUKS unlocking.

ujust luks-config tpm2 disable
    Removes all TPM2 slots configured in LUKS

ujust luks-config fido2 enable
    Sets up and configures FIDO2 LUKS unlocking.

ujust luks-config fido2 disable
    Removes all FIDO2 slots configured in LUKS

ujust luks-config fido2 add-key
    Adds a new FIDO2 key to a slot in LUKS.

ujust luks-config help
    Prints this message.

Not find what you're trying to do? Try these sites for manual options:
https://www.freedesktop.org/software/systemd/man/latest/systemd-cryptenroll.html
https://linux.die.net/man/8/cryptsetup

"""
