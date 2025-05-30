#!/bin/bash
#
# Binghamton University, School of Computing
# 
# Generic cmake build script
# 
# Filename:    build.sh
# Date:        2025-05-29
#
# THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

if [ "$1" == 'clean' ]; then
    rm -rf build/
    exit 0
fi

if [ $(uname) == Linux ]; then
    cores=$(nproc --all)
else 
    cores=$(sysctl -n hw.ncpu) # MACOS
fi

git_root=$(git worktree list | cut -d ' ' -f1)

cmake -B "$git_root"/build && make -C "$git_root"/build -j"${cores}"
